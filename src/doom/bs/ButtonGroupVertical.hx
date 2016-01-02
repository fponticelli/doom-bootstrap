package doom.bs;

import Doom.*;
import doom.Node;
import js.html.MouseEvent;

class ButtonGroupVertical extends Component<{}, ButtonGroupStateVertical> {
  public static function create(?options : ButtonGroupStateVertical, children : Nodes) : Node {
    if (options == null) options = {};
    return new ButtonGroup({}, options, children);
  }

  override function render() : Node {
    return div([
      "class" => "btn-group-vertical",
      "data-toggle" => (state.toggle == true ? "buttons" : null),
      "role" => "group",
      "aria-label" => state.label,
      "btn-group-sm" => Type.enumEq(state.size, Small),
      "btn-group-lg" => Type.enumEq(state.size, Large)
    ], children);
  }
}

typedef ButtonGroupStateVertical = {
  ?size : Size,
  ?toggle : Bool,
  ?label : String
};
