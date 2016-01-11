package doom.bs;

import Doom.*;

class CloseButton extends Doom {
  @:api          var click : Void -> Void;
  @:state(false) var dismissAlert : Bool;

  override function render()
    return button([
      "class" => "close",
      "data-dismiss" => (dismissAlert == true ? "alert" : null),
      "aria-label" => "Close",
      "click" => api.click
    ], [
      span([
        "aria-hidden" => (dismissAlert == true ? "true" : null)
      ], "×")
    ]);
}
