package doom.bs;

import doom.html.Html.*;
using thx.Nulls;

class Progress extends doom.html.Component<ProgressProps> {
  public static function with(value : Float, max : Float, ?options : ProgressOptions)
    return new Progress({
      value : value,
      max : max,
      style : options.style.or(Default),
      striped : options.striped.or(false),
      animated : options.animated.or(false)
    }).asNode();

  override function render()
    return progress([
        "class" => [
          "progress"          => true,
          "progress-success"  => props.style == Success,
          "progress-info"     => props.style == Info,
          "progress-warning"  => props.style == Warning,
          "progress-danger"   => props.style == Danger,
          "progress-striped"  => props.striped,
          "progress-animated" => props.animated
        ],
        "value" => '${props.value}',
        "max" => '${props.max}'
      ],
      Math.round(props.value / props.max * 100) + "%"
    );
}

enum ProgressStyle {
  Default;
  Success;
  Info;
  Warning;
  Danger;
}

typedef ProgressOptions = {
  ?style : ProgressStyle,
  ?striped : Bool,
  ?animated : Bool
}

typedef ProgressProps = {>ProgressOptions,
  value : Float,
  max : Float
}
