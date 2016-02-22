package doom.bs;

import doom.html.Html.*;
import doom.core.VNodes;
using thx.Objects;
using thx.Nulls;

class Alert extends doom.html.Component<AlertProps> {
  public static function with(type : AlertType, ?options : { ?dismissable : Bool }, children : VNodes)
    return new Alert({
      type : type,
      dismissable : options.dismissable.or(false)
    }, children).asNode();

  override function render() {
    var children : VNodes = [];
    if(props.dismissable == true) {
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
      "alert-success" => Success == props.type,
      "alert-info"    => Info    == props.type,
      "alert-warning" => Warning == props.type,
      "alert-danger"  => Danger  == props.type
      ]
    ], children);
  }

  override function didMount() {
    // TODO, is the JS needed always?
    if(props.dismissable == true)
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

typedef AlertProps = {
  ?dismissable : Bool,
  type : AlertType
}
