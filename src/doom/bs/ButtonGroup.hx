package doom.bs;

import doom.html.Html.*;
import doom.core.VChildren;
using thx.Nulls;

class ButtonGroup extends doom.html.Component<ButtonGroupProps> {
  public static function with(?options : ButtonGroupProps, children : VChildren)
    return new ButtonGroup({
      size      : options.size.or(Default),
      toggle    : options.toggle.or(false),
      label     : options.label.or(null),
      className : options.className.or(null)
    }, children).asChild();

  override function render()
    return div([
      "class" => [
        "btn-group" => true,
        "btn-group-sm" => props.size == Small,
        "btn-group-lg" => props.size == Large,
        props.className => props.className != null
      ],
      "data-toggle" => (props.toggle == true ? "buttons" : null),
      "role" => "group",
      "aria-label" => props.label
    ], children);
}

typedef ButtonGroupProps = {
  ?size : Size,
  ?toggle : Bool,
  ?label : String,
  ?className : String
}
