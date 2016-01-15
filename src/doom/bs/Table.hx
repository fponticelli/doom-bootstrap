package doom.bs;

import Doom.*;

class Table extends Doom {
  override function render()
    return table(["class" => "table"], children);
}
