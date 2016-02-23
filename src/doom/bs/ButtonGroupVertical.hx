package doom.bs;

import doom.html.Html.*;
import doom.core.VChildren;
using thx.Nulls;

class ButtonGroupVertical extends doom.html.Component<ButtonGroupVerticalProps> {
  public static function with(?options : ButtonGroupVerticalProps, children : VChildren)
    return new ButtonGroupVertical({
      size      : options.size.or(Default),
      toggle    : options.toggle.or(false),
      label     : options.label.or(null),
      className : options.className.or(null)
    }, children).asNode();

  override function render()
    return div([
      "class" => [
        "btn-group-vertical" => true,
        props.className => props.className != null
      ],
      "data-toggle" => (props.toggle == true ? "buttons" : null),
      "role" => "group",
      "aria-label" => props.label,
      "btn-group-sm" => props.size == Small,
      "btn-group-lg" => props.size == Large
    ], children);
}

typedef ButtonGroupVerticalProps = {
  ?size : Size,
  ?toggle : Bool,
  ?label : String,
  ?className : String
}
