package doom.bs;

import Doom.*;
import doom.Node;
using thx.Objects;

class Alert extends Component<{}, AlertState> {
  public static function create(type : AlertType, ?options : AlertOptions, children : Nodes) : Node {
    var state = { type : type }.merge(options);
    return new Alert({}, state, children);
  }

  inline public static function success(?options : AlertOptions, children : Nodes) : Node
    return create(Success, options, children);

  inline public static function info(?options : AlertOptions, children : Nodes) : Node
    return create(Info, options, children);

  inline public static function warning(?options : AlertOptions, children : Nodes) : Node
    return create(Warning, options, children);

  inline public static function danger(?options : AlertOptions, children : Nodes) : Node
    return create(Danger, options, children);

  override function render() {
    var children = [];
    if(state.dismissable) {
      children.push(
        button([
          "type" => "button",
          "class" => "close",
          "data-dismiss" => "alert",
          "aria-label" => "Close"
        ], [
          span(["aria-hidden" => "true"], "×")
        ])
      );
    }

    children = children.concat(this.children);
    return div([
      "class" => [
      "alert" => true,
      "alert-success" => Type.enumEq(Success, state.type),
      "alert-info"    => Type.enumEq(Info, state.type),
      "alert-warning" => Type.enumEq(Warning, state.type),
      "alert-danger"  => Type.enumEq(Danger, state.type)
      ]
      ], children);
  }

  override function mount() {
    // TODO, is the JS needed always?
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

/*
TODO
events:
  close.bs.alert
  closed.bs.alert
method:
  $().alert('close')
*/

enum AlertType {
  Success;
  Info;
  Warning;
  Danger;
}
