package doom.bs;

import Doom.*;
import doom.*;
using thx.Arrays;
using thx.Functions;

class Jumbotron extends Component<{}, {}> {
  public function new(children : Array<Node>) {
    super({}, {}, children);
  }

  override function render() : Node {
    return div(["class" => "jumbotron"], children);
  }
}
