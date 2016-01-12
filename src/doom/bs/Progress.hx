package doom.bs;

import Doom.*;

class Progress extends Doom {
  @:state          var value : Float;
  @:state          var max : Float;
  @:state(Default) var style : ProgressStyle;
  @:state(false)   var striped : Bool;
  @:state(false)   var animated : Bool;
  override function render()
    return progress([
        "class" => [
          "progress"          => true,
          "progress-success"  => Type.enumEq(style, Success),
          "progress-info"     => Type.enumEq(style, Info),
          "progress-warning"  => Type.enumEq(style, Warning),
          "progress-danger"   => Type.enumEq(style, Danger),
          "progress-striped"  => striped,
          "progress-animated" => animated
        ],
        "value" => '$value',
        "max" => '$max'
      ],
      Math.round(value / max * 100) + "%"
    );
}

enum ProgressStyle {
  Default;
  Success;
  Info;
  Warning;
  Danger;
}
