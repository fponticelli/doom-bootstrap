package doom.bs;

import Doom.*;
import doom.Node;
import js.html.MouseEvent;

class ButtonGroup extends Component<{}, ButtonGroupState> {
  var classes(default, null) : Array<String>;

  public static function create(?options : ButtonGroupState, children : Nodes) : Node {
    if (options == null) options = {};
    return new ButtonGroup({}, options, children);
  }

  override function render() : Node {
    return div([
      "class" => "btn-group",
      "data-toggle" => (state.toggle == true ? "buttons" : null),
      "role" => "group",
      "aria-label" => state.label
    ], children);
  }}

typedef ButtonGroupState = {
  ?toggle : Bool,
  ?label : String
};
