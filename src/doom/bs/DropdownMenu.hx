package doom.bs;

import doom.html.Html.*;
import doom.core.VChildren;
using thx.Nulls;

class DropdownMenu extends doom.html.Component<DropdownMenuProps> {
  public static function with(?options : { ?dropup : Bool }, children : VChildren)
    return new DropdownMenu({
      dropup : options.dropup.or(false)
    }, children).asChild();

  override function render()
    return div([
      "class" => "dropdown-menu",
      "dropup" => props.dropup == true
    ], children);
}

typedef DropdownMenuProps = {
  ?dropup : Bool
}
