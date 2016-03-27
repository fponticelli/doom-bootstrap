package doom.bs;

import doom.html.Html.*;
import doom.core.VNodes;

class Jumbotron extends doom.html.Component<{}> {
  public static function with(children : VNodes)
    return new InputGroup({}, children).asNode();

  override function render()
    return div(["class" => "jumbotron"], children);
}
