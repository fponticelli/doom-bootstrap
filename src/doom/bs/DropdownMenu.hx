package doom.bs;

import doom.html.Html.*;

class DropdownMenu extends doom.html.Component<DropdownMenuProps> {
  @:state(false) var dropup : Bool;

  override function render()
    return div([
      "class" => "dropdown-menu",
      "dropup" => dropup == true
    ], children);
}

typedef DropdownMenuProps = {

}
