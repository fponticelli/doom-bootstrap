package doom.bs;

import Doom.*;
import doom.Node;
import js.html.MouseEvent;

class Button extends Component<ButtonApi, ButtonState> {
  var classes(default, null) : Array<String>;

  public static function create(style : ButtonStyle, ?options : {
    ?size : Size,
    ?block : Bool,
    ?active : Bool,
    ?disabled : Bool,
    ?outline : Bool
  }, onClick: Void -> Void, children : Nodes) : Node {
    if (options == null) options = {};
    return new Button({ onClick: onClick }, {
      active: options.active,
      disabled: options.disabled,
      outline: options.outline,
      block: options.block,
      size: options.size,
      style: style
    }, children);
  }

  override function render() : Node {
    return button([
      "type" => "button",
      "class" => getClass(),
      "disabled" => state.disabled,
      "click" => api.onClick
    ], children);
  }

  function getClass() : String {
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

typedef ButtonApi = {
  public function onClick() : Void;
};

typedef ButtonState = {
  ?block : Bool,
  ?active: Bool,
  ?disabled: Bool,
  ?outline : Bool,
  ?dropdownToggle : Bool,
  ?size: Size,
  ?style: ButtonStyle,
};
