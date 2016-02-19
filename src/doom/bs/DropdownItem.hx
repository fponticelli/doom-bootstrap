package doom.bs;

import doom.html.Html.*;

class DropdownItem extends doom.html.Component<DropdownItemProps> {
  @:api          var click : Void -> Void;
  @:state(false) var disabled : Bool;

  override function render() : Node
    return button([
      "class" => "dropdown-item",
      "type" => "button",
      "disabled" => disabled == true,
      "click" => click
    ], children);
}

typedef DropdownItemProps = {

}
