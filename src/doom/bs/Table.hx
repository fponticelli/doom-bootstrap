package doom.bs;

import Doom.*;

class Table extends Doom {
  @:state(false)   var striped : Bool;
  @:state(false)   var inverse : Bool;
  @:state(false)   var bordered : Bool;
  @:state(false)   var hover : Bool;
  @:state(false)   var small : Bool;
  override function render()
    return table([
      "class" => [
        "table" => true,
        "table-inverse" => inverse,
        "table-striped" => striped,
        "table-bordered" => bordered,
        "table-hover" => hover,
        "table-sm" => small
      ]
    ], children);
}
