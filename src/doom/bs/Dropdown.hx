package doom.bs;

import doom.html.Html.*;
import doom.core.VNodes;
using thx.Nulls;

class Dropdown extends doom.html.Component<DropdownProps> {
  public static function with(?options : { ?open : Bool }, children : VNodes)
    return new Dropdown({
      open : options.open.or(false)
    }, children).asNode();

  override function render()
    return div([
      "class" => "dropdown",
      "open" => props.open == true,
    ], children);
}

typedef DropdownProps = {
  ?open : Bool
}
