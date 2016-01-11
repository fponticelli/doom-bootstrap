package doom.bs;

import Doom.*;
import doom.bs.Button.ButtonStyle;
// import doom.Node;
using thx.Objects;

class RadioButtonGroup<T> extends doom.Component<RadioButtonGroupApi<T>, RadioButtonGroupState<T>> {
  public static function with<T>(change : T -> Void, values : Array<RadioButtonGroupItemState<T>>, ?state : RadioButtonGroupStateOptions) : doom.Node {
    if(null == state)
      state = {};
    return new RadioButtonGroup({
      change : change
    }, state.merge({
      values : values
    }));
  }

  override function render() {
    var itemOptions = {
          name : state.name,
          // block : state.block,
          disabled : state.disabled,
          outline : state.outline,
          size : state.size
        };
    return ButtonGroup.with({ toggle : true }, state.values.map(function(value) : Node {
      var style = value.style;
      if(null == style)
        style = state.style;
      if(null == style)
        style = Primary;
      var itemState = itemOptions.merge({
        active : value.active
      });
      return RadioButton.with(api.change.bind(value.value), style, itemState, value.label);
    }));
  }
}


typedef RadioButtonGroupItemState<T> = {
  label : Node,
  value : T,
  ?active : Bool,
  ?style : ButtonStyle
}

typedef RadioButtonGroupApi<T> = {
  change : T -> Void
}

typedef RadioButtonGroupState<T> = {> RadioButtonGroupStateOptions,
  values : Array<RadioButtonGroupItemState<T>>
}

typedef RadioButtonGroupStateOptions = {
  ?style : ButtonStyle,
  ?name : String,
  // ?block : Bool,
  ?disabled: Bool,
  ?outline : Bool,
  ?size: Size
}
