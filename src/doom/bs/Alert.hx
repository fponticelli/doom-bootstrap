package doom.bs;

import Doom.*;
import doom.Node;
using thx.Objects;

class Alert extends Doom {
  @:state(false) var dismissable : Bool;
  @:state        var type : AlertType;

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
      "alert-success" => Success == type,
      "alert-info"    => Info == type,
      "alert-warning" => Warning == type,
      "alert-danger"  => Danger == type
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
