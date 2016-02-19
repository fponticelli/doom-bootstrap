package doom.bs;

import doom.html.Html.*;

class InputGroup extends doom.html.Component<InputGroupProps> {
  override function render()
    return div([
      "class" => "input-group"
    ], children);
}

typedef InputGroupProps = {

}
