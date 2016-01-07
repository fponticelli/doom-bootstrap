package doom.bs;

import Doom.*;
import doom.Node;
import js.html.MouseEvent;

class CloseButton extends Component<CloseButtonApi, CloseButtonState> {
  public static function create(click : Void -> Void, ?options : CloseButtonState) : Node {
    if (options == null) options = {};
    return new CloseButton({ click : click }, options);
  }

  override function render() : Node {
    return button([
      "class" => "close",
      "data-dismiss" => (state.dismissAlert == true ? "alert" : null),
      "aria-label" => "Close",
      "click" => api.click
    ], [
      span([
        "aria-hidden" => (state.dismissAlert == true ? "true" : null)
      ], "×")
    ]);
  }
}

typedef CloseButtonApi = {
  click : Void -> Void
}

typedef CloseButtonState = {
  ?dismissAlert : Bool
};
