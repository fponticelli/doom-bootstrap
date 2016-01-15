package doom.bs;

import Doom.*;

class Table extends Doom {
  @:state(false) var inverse : Bool;
  override function render()
    return table([
      "class" => [
        "table" => true,
        "table-inverse" => inverse
      ]
    ], children);
}
