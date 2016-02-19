package doom.bs;

import doom.html.Html.*;

class Container extends doom.html.Component<ContainerProps> {
  @:state(opt) var className : String;

  override function render() : Node {
    return div([
      "class" => [
        "container" => true,
        className => null != className
      ]
    ], children);
  }
}

typedef ContainerProps = {

}
