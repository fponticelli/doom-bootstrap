package doom.bs;

import doom.html.Html.*;
import doom.core.VChildren;
using thx.Nulls;

class Navbar extends doom.html.Component<NavbarProps> {
  public static function with(?options : NavbarProps, children : VChildren)
    return new Navbar({
      theme : options.theme.or(null),
      background : options.background.or(null)
    }, children).asChild();

  override function render()
    return nav([
      "class" => [
        "navbar" => true,
        "navbar-light" => props.theme == Light,
        "navbar-dark"  => props.theme == Dark,
        "bg-faded"     => props.background == Faded,
        "bg-inverse"   => props.background == Inverse,
        "bg-primary"   => props.background == Primary
    ]
  ], children);
}

enum NavbarTheme {
  Light;
  Dark;
}

enum NavbarBackground {
  Faded;
  Inverse;
  Primary;
}

typedef NavbarProps = {
  ?theme : NavbarTheme,
  ?background : NavbarBackground
}
