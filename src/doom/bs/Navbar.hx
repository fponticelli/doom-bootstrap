package doom.bs;

import Doom.*;

class Navbar extends doom.Component<{}, NavbarState> {
  override function render()
    return nav([
      "class" => [
        "navbar" => true,
        "navbar-light" => Type.enumEq(state.theme, Light),
        "navbar-dark" => Type.enumEq(state.theme, Dark),
        "bg-faded" => Type.enumEq(state.bg, Faded),
        "bg-inverse" => Type.enumEq(state.bg, Inverse),
        "bg-primary" => Type.enumEq(state.bg, Primary)
    ]], children);
}

typedef NavbarState = {
  ?theme : NavbarTheme,
  ?bg : NavbarBackground
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
