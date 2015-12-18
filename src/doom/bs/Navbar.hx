package doom.bs;

import Doom.*;

class Navbar extends doom.Component<{}, NavbarState> {
  override function render()
    return nav([
      "class" => [
        "navbar" => true,

    ]], children);
}

typedef NavbarState = {

}
