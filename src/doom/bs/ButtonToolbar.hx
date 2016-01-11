package doom.bs;

import Doom.*;

class ButtonToolbar extends Doom {
  @:state(opt)
  var label : String;

  override function render()
    return div([
      "class" => "btn-toolbar",
      "role" => "toolbar",
      "aria-label" => state.label
    ], children);
}
