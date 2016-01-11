import doom.Node;
import doom.bs.Alert;
import doom.bs.Button;
import doom.bs.ButtonGroup;
import doom.bs.ButtonGroupVertical;
import doom.bs.ButtonToolbar;
import doom.bs.CloseButton;
import doom.bs.Container;
import doom.bs.Dropdown;
import doom.bs.DropdownItem;
import doom.bs.DropdownMenu;
import doom.bs.InputGroup;
import doom.bs.Jumbotron;
import doom.bs.Label;
import doom.bs.Navbar;
import doom.bs.RadioButton;

class BS {
  public static var alert(default, null) = Alert.with;
  public static var alertSuccess(default, null) = Alert.with.bind(Success, _, _);
  public static var alertInfo(default, null) = Alert.with.bind(Info, _, _);
  public static var alertWarning(default, null) = Alert.with.bind(Warning, _, _);
  public static var alertDanger(default, null) = Alert.with.bind(Danger, _, _);

  public static var button(default, null) =  Button.with;
  public static var buttonPrimary(default, null) =  Button.with.bind(_, Primary, _, _);
  public static var buttonSecondary(default, null) =  Button.with.bind(_, Secondary, _, _);
  public static var buttonInfo(default, null) =  Button.with.bind(_, Info, _, _);
  public static var buttonSuccess(default, null) =  Button.with.bind(_, Success, _, _);
  public static var buttonWarning(default, null) =  Button.with.bind(_, Warning, _, _);
  public static var buttonDanger(default, null) =  Button.with.bind(_, Danger, _, _);

  public static var buttonGroup(default, null) =  ButtonGroup.with;

  public static var buttonGroupVertical(default, null) =  ButtonGroupVertical.with;

  public static var buttonToolbar(default, null) =  ButtonToolbar.with;

  public static var closeButton(default, null) = CloseButton.with;

  public static var container(default, null) =  Container.with;

  public static var dropdown(default, null) =  Dropdown.with;

  public static var dropdownItem(default, null) =  DropdownItem.with;

  public static var dropdownMenu(default, null) =  DropdownMenu.with;

  public static var inputGroup(default, null) = InputGroup.with;

  public static var jumbotron(default, null) = Jumbotron.with;

  public static var label(default, null) = Label.with;
  public static var labelDefault(default, null) = Label.with.bind(Default, _, _);
  public static var labelPrimary(default, null) = Label.with.bind(Primary, _, _);
  public static var labelSuccess(default, null) = Label.with.bind(Success, _, _);
  public static var labelInfo(default, null) = Label.with.bind(Info, _, _);
  public static var labelWarning(default, null) = Label.with.bind(Warning, _, _);
  public static var labelDanger(default, null) = Label.with.bind(Danger, _, _);
  public static var pill(default, null) = function(?type : LabelType, ?children : Nodes)
    return Label.with(type, { isPill : true }, children);
  public static var pillDefault(default, null) = pill.bind(Default, _);
  public static var pillPrimary(default, null) = pill.bind(Primary, _);
  public static var pillSuccess(default, null) = pill.bind(Success, _);
  public static var pillInfo(default, null) = pill.bind(Info, _);
  public static var pillWarning(default, null) = pill.bind(Warning, _);
  public static var pillDanger(default, null) = pill.bind(Danger, _);

  public static var navbar(default, null) = Navbar.with;

  public static var radioButton(default, null) = RadioButton.with;
  // public static var radioButtons(default, null) = RadioButton.createGroup;
  inline public static function row(?className : String, children : Nodes) : Node
    return Doom.div(["class" => [
      "row" => true,
      className => null != className
    ]], children);


}
