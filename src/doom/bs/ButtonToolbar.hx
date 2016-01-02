package doom.bs;

import Doom.*;
import doom.Node;
import js.html.MouseEvent;

class ButtonToolbar extends Component<{}, ButtonToolbarState> {
  public static function create(?options : ButtonToolbarState, children : Nodes) : Node {
    if (options == null) options = {};
    return new ButtonToolbar({}, options, children);
  }

  override function render() : Node {
    return div([
      "class" => "btn-toolbar",
      "role" => "toolbar",
      "aria-label" => state.label
    ], children);
  }}

typedef ButtonToolbarState = {
  ?label : String
};
