package doom.bs;

import doom.html.Html.*;
import doom.core.VChildren;
using thx.Nulls;

class DropdownItem extends doom.html.Component<DropdownItemProps> {
  public static function with(click : Void -> Void, ?options : { ?disabled : Bool }, children : VChildren)
    return new DropdownItem({
      click : click,
      disabled : options.disabled.or(false)
    }, children).asChild();

  override function render()
    return button([
      "class" => "dropdown-item",
      "type" => "button",
      "disabled" => props.disabled == true,
      "click" => props.click
    ], children);
}

typedef DropdownItemProps = {
  click : Void -> Void,
  ?disabled : Bool
}
