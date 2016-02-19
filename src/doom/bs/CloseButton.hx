package doom.bs;

import doom.html.Html.*;
using thx.Nulls;

class CloseButton extends doom.html.Component<CloseButtonProps> {
  public static function with(click : Void -> Void, ?options : CloseButtonOptions)
    return new CloseButton({
      click : click,
      dismissAlert : options.dismissAlert.or(false)
    }).asNode();

  override function render()
    return button([
      "class" => "close",
      "data-dismiss" => (props.dismissAlert == true ? "alert" : null),
      "aria-label" => "Close",
      "click" => props.click
    ], [
      span([
        "aria-hidden" => (props.dismissAlert == true ? "true" : null)
      ], "×")
    ]);
}

typedef CloseButtonOptions = {
  ?dismissAlert : Bool
}

typedef CloseButtonProps = {>CloseButtonOptions,
  click : Void -> Void
}
