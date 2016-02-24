package doom.bs;

import doom.html.Html.*;
import doom.core.VChildren;

class InputGroup extends doom.html.Component<{}> {
  public static function with(children : VChildren)
    return new InputGroup({}, children).asChild();

  override function render()
    return div([
      "class" => "input-group"
    ], children);
}
