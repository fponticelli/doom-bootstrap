package doom.bs;

import Doom.*;

class Button extends Doom {
  @:api            var click : Void -> Void;
  @:state          var style : ButtonStyle;
  @:state(false)   var block : Bool;
  @:state(false)   var active : Bool;
  @:state(false)   var disabled : Bool;
  @:state(false)   var outline : Bool;
  @:state(false)   var dropdownToggle : Bool;
  @:state(Default) var size : Size;

  override function render()
    return button([
      "type" => "button",
      "class" => getClass(state),
      "disabled" => disabled,
      "click" => click,
      "data-toggle" => (dropdownToggle == true ? "dropdown" : null),
      "aria-haspopup" => (dropdownToggle == true ? "true" : null),
    ], children);

  public static function getClass(state : ButtonState) : String {
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

    if (state.block == true)
      classes.push("btn-block");

    if (state.dropdownToggle == true)
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
