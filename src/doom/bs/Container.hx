package doom.bs;

import Doom.*;
import doom.Node;

class Container extends Component<{}, ContainerState> {
  public static function create(?options : { ?className : String }, children : Nodes) : Node {
    if (options == null) options = {};
    return new Container({}, options, children);
  }

  override function render() : Node {
    return div([
      "class" => [
        "container" => true,
        state.className => null != state.className
      ]
    ], children);
  }}

typedef ContainerState = {
  ?className : String
};
