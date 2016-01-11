package doom.bs;

import Doom.*;

class ButtonGroupVertical extends Doom {
  @:state(Default)
  var size : Size;
  @:state(false)
  var toggle : Bool;
  @:state(opt)
  var label : String;

  override function render()
    return div([
      "class" => "btn-group-vertical",
      "data-toggle" => (state.toggle == true ? "buttons" : null),
      "role" => "group",
      "aria-label" => state.label,
      "btn-group-sm" => Type.enumEq(state.size, Small),
      "btn-group-lg" => Type.enumEq(state.size, Large)
    ], children);
}
