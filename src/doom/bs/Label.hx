package doom.bs;

import Doom.*;
import doom.Node;

class Label extends Component<{}, LabelState> {
  public static function create(children : Nodes, ?type : LabelType)
    return new Label({}, { type : type }, children);

  public static function pill(children : Nodes, ?type : LabelType)
    return new Label({}, { type : type, isPill : true }, children);

  override function render()
    return SPAN([
      "class" => [
        "label" => true,
        "label-default" => null == state.type || Type.enumEq(Default, state.type),
        "label-primary" => Type.enumEq(Primary, state.type),
        "label-success" => Type.enumEq(Success, state.type),
        "label-info"    => Type.enumEq(Info, state.type),
        "label-warning" => Type.enumEq(Warning, state.type),
        "label-danger"  => Type.enumEq(Danger, state.type),
        "label-pill"    => state.isPill == true
      ]
    ], children);
}

typedef LabelState = {
  ?type : LabelType,
  ?isPill : Bool
}

enum LabelType {
  Default;
  Primary;
  Success;
  Info;
  Warning;
  Danger;
}
