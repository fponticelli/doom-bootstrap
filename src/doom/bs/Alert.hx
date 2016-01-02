package doom.bs;

import Doom.*;
import doom.Node;
using thx.Objects;

class Alert extends Component<{}, AlertState> {
  public static function create(type : AlertType, ?options : AlertOptions, children : Nodes) : Node {
    var state = { type : type }.merge(options);
    return new Alert({}, { type : type }, children);
  }

  inline public static function success(?options : AlertOptions, children : Nodes) : Node
    return create(Success, children);

  inline public static function info(?options : AlertOptions, children : Nodes) : Node
    return create(Info, children);

  inline public static function warning(?options : AlertOptions, children : Nodes) : Node
    return create(Warning, children);

  inline public static function danger(?options : AlertOptions, children : Nodes) : Node
    return create(Danger, children);

  override function render()
    return div([
      "class" => [
        "alert" => true,
        "alert-success" => Type.enumEq(Success, state.type),
        "alert-info"    => Type.enumEq(Info, state.type),
        "alert-warning" => Type.enumEq(Warning, state.type),
        "alert-danger"  => Type.enumEq(Danger, state.type)
      ]
    ], children);

  override function mount() {
    if(state.dismissable == true)
      untyped __js__("$")(element).alert();
  }
}

typedef AlertOptions = {
  ?dismissable : Bool
}

typedef AlertState = {
  type : AlertType,
  ?dismissable : Bool
}

enum AlertType {
  Success;
  Info;
  Warning;
  Danger;
}
