package doom.bs;

import Doom.*;

class Container extends Doom {
  @:state(opt)
  var className : String;

  override function render() : Node {
    return div([
      "class" => [
        "container" => true,
        className => null != className
      ]
    ], children);
  }
}
