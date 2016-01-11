package doom.bs;

import Doom.*;

class Label extends Doom {
  @:state
  var type : LabelType;
  @:state(false)
  var isPill : Bool;

  override function render()
    return span([
      "class" => [
        "label" => true,
        "label-default" => null == type || Type.enumEq(Default, type),
        "label-primary" => Type.enumEq(Primary, type),
        "label-success" => Type.enumEq(Success, type),
        "label-info"    => Type.enumEq(Info, type),
        "label-warning" => Type.enumEq(Warning, type),
        "label-danger"  => Type.enumEq(Danger, type),
        "label-pill"    => isPill == true
      ]
    ], children);
}

enum LabelType {
  Default;
  Primary;
  Success;
  Info;
  Warning;
  Danger;
}
