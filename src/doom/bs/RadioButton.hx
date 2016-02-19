package doom.bs;

import doom.html.Html.*;
import doom.bs.Button.ButtonStyle;
import doom.core.VNodes;
using thx.Nulls;

class RadioButton extends doom.html.Component<RadioButtonProps> {
  public static function with(click : Void -> Void, style : ButtonStyle, ?options : RadioButtonOptions, children : VNodes)
    return new RadioButton({
      click : click,
      style : style,
      name : options.name.or(null),
      active : options.active.or(false),
      disabled : options.disabled.or(false),
      outline : options.outline.or(false),
      size : options.size.or(Default),
    }, children).asNode();

  override function render()
    return label([
        "class" => getClass(props),
        "click" => props.click
      ], [
        input([
          "type" => "radio",
          "name" => props.name,
          "autocomplete" => "off",
          "checked" => true
        ])
      ].concat(children));

  public static function getClass(state : RadioButtonProps) : String {
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
      case null, Default: "";
      case Large: "btn-lg";
      case Small: "btn-sm";
    };
    classes.push(sizeClass);

    if (state.active == true)
      classes.push("active");

    return classes.join(" ");
  }
}

typedef RadioButtonOptions = {
  ?name : String,
  ?active : Bool,
  ?disabled : Bool,
  ?outline : Bool,
  ?size : Size,
}

typedef RadioButtonProps = {>RadioButtonOptions,
  click : Void -> Void,
  style : ButtonStyle
}
