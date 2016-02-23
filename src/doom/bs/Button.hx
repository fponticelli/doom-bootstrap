package doom.bs;

import doom.html.Html.*;
import doom.core.VChildren;
using thx.Nulls;

class Button extends doom.html.Component<ButtonProps> {
  public static function with(click : Void -> Void, style : ButtonStyle, ?options : ButtonBasicOptions, children : VChildren) {
    return new Button({
      click : click,
      style : style,
      block : options.block.or(false),
      active : options.active.or(false),
      disabled : options.disabled.or(false),
      outline : options.outline.or(false),
      dropdownToggle : options.dropdownToggle.or(false),
      size : options.size.or(Default)
    }, children).asNode();
  }


  override function render() {
    return button([
      "type" => "button",
      "class" => getClass(props),
      "disabled" => props.disabled == true,
      "click" => props.click,
      "data-toggle" =>(props.dropdownToggle == true ? "dropdown" : null),
      "aria-haspopup" =>(props.dropdownToggle == true ? "true" : null),
      ], children);
  }

  public static function getClass(state : ButtonOptions) : String {
    var classes = ["btn"],
        styleClass = switch state.style {
          case Primary: "btn-primary";
          case Secondary: "btn-secondary";
          case Info: "btn-info";
          case Success: "btn-success";
          case Warning: "btn-warning";
          case Danger: "btn-danger";
        };

    if(state.outline == true)
      styleClass += "-outline";
    classes.push(styleClass);

    var sizeClass = switch state.size {
      case null, Default: [];
      case Large: ["btn-lg"];
      case Small: ["btn-sm"];
    };
    classes = classes.concat(sizeClass);

    if(state.active == true)
      classes.push("active");

    if(state.block == true)
      classes.push("btn-block");

    if(state.dropdownToggle == true)
      classes.push("dropdown-toggle");

    return classes.join(" ");
  }
}

enum ButtonStyle {
  Primary;
  Secondary;
  Info;
  Success;
  Warning;
  Danger;
}

typedef ButtonBasicOptions = {
  ?block : Bool,
  ?active : Bool,
  ?disabled : Bool,
  ?outline : Bool,
  ?dropdownToggle : Bool,
  ?size : Size
}

typedef ButtonOptions = {>ButtonBasicOptions,
  style : ButtonStyle
}

typedef ButtonProps = {> ButtonOptions,
  click : Void -> Void
}
