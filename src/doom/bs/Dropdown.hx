package doom.bs;

import Doom.*;
import doom.Node;
import js.html.MouseEvent;

class Dropdown extends Component<{}, DropdownState> {
  public static function create(?options : DropdownState, children : Nodes) : Node {
    if (options == null) options = {};
    return new Dropdown({}, options, children);
  }

  override function render() : Node {
    return div([
      "class" => "dropdown",
      "open" => state.open == true,
    ], children);
  }
}

typedef DropdownState = {
  ?open : Bool
};
