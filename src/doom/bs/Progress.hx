package doom.bs;

import doom.html.Html.*;

class Progress extends doom.html.Component<ProgressProps> {
  @:state          var value : Float;
  @:state          var max : Float;
  @:state(Default) var style : ProgressStyle;
  @:state(false)   var striped : Bool;
  @:state(false)   var animated : Bool;
  override function render()
    return progress([
        "class" => [
          "progress"          => true,
          "progress-success"  => style == Success,
          "progress-info"     => style == Info,
          "progress-warning"  => style == Warning,
          "progress-danger"   => style == Danger,
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

typedef ProgressProps = {

}
