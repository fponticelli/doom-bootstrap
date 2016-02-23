package doom.bs;

import doom.html.Html.*;
import doom.core.VChildren;
using thx.Nulls;

class Container extends doom.html.Component<ContainerProps> {
  public static function with(?options : { ?className : String }, children : VChildren)
    return new Container({
      className : options.className.or(null)
    }, children).asNode();

  override function render() {
    return div([
      "class" => [
        "container" => true,
        props.className => null != props.className
      ]
    ], children);
  }
}

typedef ContainerProps = {
  ?className : String
}
