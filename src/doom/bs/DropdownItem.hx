package doom.bs;

import Doom.*;

class DropdownItem extends Doom {
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
