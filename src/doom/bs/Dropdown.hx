package doom.bs;

import doom.html.Html.*;

class Dropdown extends doom.html.Component<DropdownProps> {
  @:state(false) var open : Bool;

  override function render()
    return div([
      "class" => "dropdown",
      "open" => open == true,
    ], children);
}

typedef DropdownProps = {

}
