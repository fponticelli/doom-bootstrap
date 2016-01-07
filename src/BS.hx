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

  public static var inputGroup(default, null) = doom.bs.InputGroup.create;

  public static var radioButton(default, null) = doom.bs.RadioButton.create;
  public static var radioButtons(default, null) = doom.bs.RadioButton.createGroup;

  public static var container(default, null) =  doom.bs.Container.create;
  public static var label(default, null) =  doom.bs.Label.create;
  public static var pill(default, null) =  doom.bs.Label.pill;
  public static var button(default, null) =  doom.bs.Button.create;
  public static var buttonGroup(default, null) =  doom.bs.ButtonGroup.create;
  public static var buttonGroupVertical(default, null) =  doom.bs.ButtonGroupVertical.create;
  public static var buttonToolbar(default, null) =  doom.bs.ButtonToolbar.create;
  public static var dropdown(default, null) =  doom.bs.Dropdown.create;
  public static var dropdownMenu(default, null) =  doom.bs.DropdownMenu.create;

  public static var alert(default, null) =  doom.bs.Alert.create;
  public static var alertSuccess(default, null) =  doom.bs.Alert.success;
  public static var alertInfo(default, null) =  doom.bs.Alert.info;
  public static var alertWarning(default, null) =  doom.bs.Alert.warning;
  public static var alertDanger(default, null) =  doom.bs.Alert.danger;
}
