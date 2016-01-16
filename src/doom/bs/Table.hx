package doom.bs;

import Doom.*;
import doom.Node;

class Table extends Doom {
  public static function responsive(?options : { ?striped : Bool, ?inverse : Bool, ?bordered : Bool, ?hover : Bool, ?small : Bool, ?reflow : Bool }, ?nodes : Nodes)
    return div(["class" => "responsive-table"], with(options, nodes));

  @:state(false)   var striped : Bool;
  @:state(false)   var inverse : Bool;
  @:state(false)   var bordered : Bool;
  @:state(false)   var hover : Bool;
  @:state(false)   var small : Bool;
  @:state(false)   var reflow : Bool;
  override function render()
    return table([
      "class" => [
        "table" => true,
        "table-inverse" => inverse,
        "table-striped" => striped,
        "table-bordered" => bordered,
        "table-hover" => hover,
        "table-sm" => small,
        "table-reflow" => reflow
      ]
    ], children);
}
