package doom.bs;

import doom.html.Html.*;
import doom.core.VNodes;
using thx.Nulls;

class ButtonToolbar extends doom.html.Component<ButtonToolbarProps> {
  public static function with(?options : ButtonToolbarProps, children : VNodes)
    return new ButtonToolbar({
      label : options.label.or(null)
    }, children).asNode();

  override function render()
    return div([
      "class" => "btn-toolbar",
      "role" => "toolbar",
      "aria-label" => props.label
    ], children);
}

typedef ButtonToolbarProps = {
  ?label : String
}
