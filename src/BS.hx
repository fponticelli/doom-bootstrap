import doom.Node;

import doom.bs.Navbar;

class BS {
  inline public static function navbar(?theme : NavbarTheme, ?bg : NavbarBackground, children : Nodes) : Node
    return new Navbar({}, { theme : theme, bg : bg }, children);

  inline public static function row(?className : String, children : Nodes) : Node
    return Doom.div(["class" => [
      "row" => true,
      className => null != className
    ]], children);

  public static var container(default, null) =  doom.bs.Container.create;
  public static var label(default, null) =  doom.bs.Label.create;
  public static var pill(default, null) =  doom.bs.Label.pill;
  public static var button(default, null) =  doom.bs.Button.create;
  public static var buttonGroup(default, null) =  doom.bs.ButtonGroup.create;
}
