package doom.bs;

import Doom.*;

class Jumbotron extends Doom {
  override function render()
    return div(["class" => "jumbotron"], children);
}
