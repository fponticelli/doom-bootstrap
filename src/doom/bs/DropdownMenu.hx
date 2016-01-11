package doom.bs;

import Doom.*;

class DropdownMenu extends Doom {
  @:state(false) var dropup : Bool;

  override function render()
    return div([
      "class" => "dropdown-menu",
      "dropup" => dropup == true
    ], children);
}
