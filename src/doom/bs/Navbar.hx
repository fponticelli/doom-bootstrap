package doom.bs;

import Doom.*;

class Navbar extends Doom {
  @:state(opt) var theme : NavbarTheme;
  @:state(opt) var background : NavbarBackground;

  override function render()
    return nav([
      "class" => [
        "navbar" => true,
        "navbar-light" => Type.enumEq(theme, Light),
        "navbar-dark" => Type.enumEq(theme, Dark),
        "bg-faded" => Type.enumEq(background, Faded),
        "bg-inverse" => Type.enumEq(background, Inverse),
        "bg-primary" => Type.enumEq(background, Primary)
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
