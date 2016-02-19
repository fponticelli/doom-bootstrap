package doom.bs;

import doom.html.Html.*;

class ButtonToolbar extends doom.html.Component<ButtonToolbarProps> {
  @:state(opt) var label : String;

  override function render()
    return div([
      "class" => "btn-toolbar",
      "role" => "toolbar",
      "aria-label" => label
    ], children);
}

typedef ButtonToolbarProps = {

}
