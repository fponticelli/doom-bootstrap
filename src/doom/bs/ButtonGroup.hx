package doom.bs;

import Doom.*;
import doom.Node;
import js.html.MouseEvent;

class ButtonGroup extends Component<{}, ButtonGroupState> {
  var classes(default, null) : Array<String>;

  public static function create(?options : { ?toggle : Bool }, children : Nodes) : Node {
    if (options == null) options = {};
    return new ButtonGroup({}, {
      toggle: options.toggle
    }, children);
  }

  override function render() : Node {
    return div([
      "class" => "btn-group",
      "data-toggle" => (state.toggle == true ? "buttons" : null)
    ], children);
  }}

typedef ButtonGroupState = {
  ?toggle : Bool
};
