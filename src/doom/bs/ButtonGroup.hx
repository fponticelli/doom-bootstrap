package doom.bs;

import Doom.*;

class ButtonGroup extends Doom {
  @:state(Default) var size : Size;
  @:state(false)   var toggle : Bool;
  @:state(opt)     var label : String;

  override function render()
    return div([
      "class" => [
        "btn-group" => true,
        "btn-group-sm" => size == Small,
        "btn-group-lg" => size == Large
      ],
      "data-toggle" => (toggle == true ? "buttons" : null),
      "role" => "group",
      "aria-label" => label
    ], children);
}
