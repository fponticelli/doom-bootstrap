package doom.bs;

import Doom.*;
import doom.*;
import js.html.MouseEvent;

class Button extends Component<ButtonApi, ButtonState> {
  var classes(default, null) : Array<String>;

  public static function create(style : ButtonStyle, ?size : ButtonSize, onClick: Void -> Void, children : Array<Node>) : Button {
    if (size == null) size = Default;
    return new Button({ onClick: onClick }, {
      active: false,
      disabled: false,
      size: size,
      style: style
    }, children);
  }

  override function render() : Node {
    return BUTTON([
      "type" => "button",
      "class" => getClass(),
      "disabled" => state.disabled,
      "click" => api.onClick
    ], children);
  }

  function getClass() : String {
    var classes : Array<String> = [];

    classes.push("btn");

    var styleClass = switch state.style {
      case Primary: "btn-primary";
      case Secondary: "btn-secondary";
      case Info: "btn-info";
      case Success: "btn-success";
      case Warning: "btn-warning";
      case Danger: "btn-danger";
      case PrimaryOutline: "btn-primary-outline";
      case SecondaryOutline: "btn-secondary-outline";
      case InfoOutline: "btn-info-outline";
      case SuccessOutline: "btn-success-outline";
      case WarningOutline: "btn-warning-outline";
      case DangerOutline: "btn-danger-outline";
    };
    classes.push(styleClass);

    var sizeClass = switch state.size {
      case Default: "";
      case Large: "btn-lg";
      case Small: "btn-sm";
    };
    classes.push(sizeClass);

    if (state.active) {
      classes.push("active");
    }

    return classes.join(" ");
  }
}

enum ButtonSize {
  Default;
  Large;
  Small;
}

enum ButtonStyle {
  Primary;
  Secondary;
  Info;
  Success;
  Warning;
  Danger;
  PrimaryOutline;
  SecondaryOutline;
  InfoOutline;
  SuccessOutline;
  WarningOutline;
  DangerOutline;
}

typedef ButtonApi = {
  public function onClick() : Void;
};

typedef ButtonState = {
  active: Bool,
  disabled: Bool,
  size: ButtonSize,
  style: ButtonStyle,
};
