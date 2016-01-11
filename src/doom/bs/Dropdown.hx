package doom.bs;

import Doom.*;

class Dropdown extends Doom {
  @:state(false) var open : Bool;

  override function render()
    return div([
      "class" => "dropdown",
      "open" => open == true,
    ], children);
}
