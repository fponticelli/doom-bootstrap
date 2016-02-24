package doom.bs;

import doom.html.Html.*;
import doom.core.VChildren;

class Jumbotron extends doom.html.Component<{}> {
  public static function with(children : VChildren)
    return new InputGroup({}, children).asChild();

  override function render()
    return div(["class" => "jumbotron"], children);
}
