package doom.bs;

import doom.html.Html.*;
import doom.core.VChildren;
using thx.Nulls;

class Table extends doom.html.Component<TableProps> {
  public static function with(?options : TableProps, children : VChildren)
    return new Table(options.or({}), children).asChild();

  public static function responsive(?options : { ?striped : Bool, ?inverse : Bool, ?bordered : Bool, ?hover : Bool, ?small : Bool, ?reflow : Bool }, ?children : VChildren)
    return div(["class" => "responsive-table"], with(options, children));

  override function render()
    return table([
      "class" => [
        "table" => true,
        "table-inverse" => props.inverse,
        "table-striped" => props.striped,
        "table-bordered" => props.bordered,
        "table-hover" => props.hover,
        "table-sm" => props.small,
        "table-reflow" => props.reflow
      ]
    ], children);
}

typedef TableProps = {
  ?striped : Bool,
  ?inverse : Bool,
  ?bordered : Bool,
  ?hover : Bool,
  ?small : Bool,
  ?reflow : Bool
}
