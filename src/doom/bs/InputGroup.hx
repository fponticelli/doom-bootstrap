package doom.bs;

import Doom.*;
import doom.Node;

class InputGroup extends Component<{}, {}> {
  public static function create(children : Nodes) : Node
    return new InputGroup({}, {}, children);

  override function render()
    return div([
      "class" => "input-group"
    ], children);
}
