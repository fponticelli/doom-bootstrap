package doom.bs;

import doom.html.Html.*;
import doom.core.VChildren;
using thx.Nulls;

class Label extends doom.html.Component<LabelProps> {
  public static function with(type : LabelType, ?options : { ?isPill : Bool }, children : VChildren)
    return new Label({
      type : type,
      isPill : options.isPill.or(false)
    }, children).asChild();

  override function render()
    return span([
      "class" => [
        "label" => true,
        "label-default" => null == props.type || Default == props.type,
        "label-primary" => Primary == props.type,
        "label-success" => Success == props.type,
        "label-info"    => Info == props.type,
        "label-warning" => Warning == props.type,
        "label-danger"  => Danger == props.type,
        "label-pill"    => props.isPill == true
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
  type : LabelType,
  ?isPill : Bool
}
