package doom.bs;

import Doom.*;
import doom.Node;
import js.html.MouseEvent;

class ButtonGroup extends Component<{}, ButtonGroupState> {
  public static function create(?options : ButtonGroupState, children : Nodes) : Node {
    if (options == null) options = {};
    return new ButtonGroup({}, options, children);
  }

  override function render() : Node {
    return div([
      "class" => [
        "btn-group" => true,
        "btn-group-sm" => Type.enumEq(state.size, Small),
        "btn-group-lg" => Type.enumEq(state.size, Large)
      ],
      "data-toggle" => (state.toggle == true ? "buttons" : null),
      "role" => "group",
      "aria-label" => state.label
    ], children);
  }
}

typedef ButtonGroupState = {
  ?size : Size,
  ?toggle : Bool,
  ?label : String
};
