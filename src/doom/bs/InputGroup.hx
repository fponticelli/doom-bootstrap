package doom.bs;

import Doom.*;

class InputGroup extends Doom {
  override function render()
    return div([
      "class" => "input-group"
    ], children);
}
