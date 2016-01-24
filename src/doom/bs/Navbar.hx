package doom.bs;

import Doom.*;

class Navbar extends Doom {
  @:state(opt) var theme : NavbarTheme;
  @:state(opt) var background : NavbarBackground;

  override function render()
    return nav([
      "class" => [
        "navbar" => true,
        "navbar-light" => theme == Light,
        "navbar-dark"  => theme == Dark,
        "bg-faded"     => background == Faded,
        "bg-inverse"   => background == Inverse,
        "bg-primary"   => background == Primary
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
