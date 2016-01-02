package doom.bs;

import Doom.*;
import doom.Node;
import js.html.MouseEvent;

class DropdownMenu extends Component<{}, DropdownMenuState> {
  public static function create(?options : DropdownMenuState, children : Nodes) : Node {
    if (options == null) options = {};
    return new DropdownMenu({}, options, children);
  }

  override function render() : Node {
    return div([
      "class" => "dropdown-menu",
      "dropup" => state.dropup == true
    ], children);
  }
}

typedef DropdownMenuState = {
  ?dropup : Bool
};
