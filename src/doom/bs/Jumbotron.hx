package doom.bs;

import Doom.*;
import doom.*;
using thx.Arrays;
using thx.Functions;

class Jumbotron extends Component<{}, {}> {
  var children(default, null) : Array<Node>;

  public function new(children : Array<Node>) {
    super({}, {});
    this.children = children;
  }

  override function render() : Node {
    return DIV(["class" => "jumbotron"], children);
  }
}
