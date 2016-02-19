package doom.bs;

import doom.html.Html.*;

class Label extends doom.html.Component<LabelProps> {
  @:state        var type : LabelType;
  @:state(false) var isPill : Bool;

  override function render()
    return span([
      "class" => [
        "label" => true,
        "label-default" => null == type || Default == type,
        "label-primary" => Primary == type,
        "label-success" => Success == type,
        "label-info"    => Info == type,
        "label-warning" => Warning == type,
        "label-danger"  => Danger == type,
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

typedef LabelProps = {

}
