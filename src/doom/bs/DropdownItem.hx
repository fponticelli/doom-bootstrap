package doom.bs;

import Doom.*;
import doom.Node;
import js.html.MouseEvent;

class DropdownItem extends Component<DropdownApi, DropdownItemState> {
  public static function create(click : Void -> Void, ?options : DropdownItemState, children : Nodes) : Node {
    if (options == null) options = {};
    return new DropdownItem({ click : click }, options, children);
  }

  override function render() : Node {
    return button([
      "class" => "dropdown-item",
      "type" => "button",
      "disabled" => state.disabled == true,
      "click" => api.click
    ], children);
  }
}

typedef DropdownApi = {
  click : Void -> Void
};


typedef DropdownItemState = {
  ?disabled : Bool
};
