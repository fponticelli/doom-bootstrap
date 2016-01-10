package doom.bs;

import Doom.*;
import doom.Node;
using thx.Objects;

class Alert extends Doom {
  inline public static function success(?options : AlertStateOptions, children : Nodes) : Node
    return with(Success, options, children);

  inline public static function info(?options : AlertStateOptions, children : Nodes) : Node
    return with(Info, options, children);

  inline public static function warning(?options : AlertStateOptions, children : Nodes) : Node
    return with(Warning, options, children);

  inline public static function danger(?options : AlertStateOptions, children : Nodes) : Node
    return with(Danger, options, children);

  @:state(false)
  var dismissable : Bool;

  @:state
  var type : AlertType;

  override function render() {
    var children = [];
    if(dismissable) {
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
      "alert-success" => Type.enumEq(Success, type),
      "alert-info"    => Type.enumEq(Info, type),
      "alert-warning" => Type.enumEq(Warning, type),
      "alert-danger"  => Type.enumEq(Danger, type)
      ]
    ], children);
  }

  override function didMount() {
    // TODO, is the JS needed always?
    if(dismissable == true)
      untyped __js__("$")(element).alert();
  }
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
