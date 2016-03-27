package doom.bs;

import doom.html.Html.*;
import doom.core.VNodes;

class InputGroup extends doom.html.Component<{}> {
  public static function with(children : VNodes)
    return new InputGroup({}, children).asNode();

  override function render()
    return div([
      "class" => "input-group"
    ], children);
}
