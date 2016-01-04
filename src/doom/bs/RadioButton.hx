package doom.bs;

import doom.bs.Button;
import doom.Node;
using thx.Objects;

class RadioButton extends doom.Component<RadioButtonApi, RadioButtonState> {
  override function render() {
    return Doom.label([
      "class" => Button.getClass(state),
      "click" => api.click
      ], [
      Doom.input([
        "type" => "radio",
        "name" => state.name,
        "autocomplete" => "off",
        "checked" => true
      ])].concat(children));
  }

  public static function create(style : ButtonStyle, ?options : RadioButtonOptions, onClick: Void -> Void, children : Nodes) : Node {
    if(null == options) options = {};
    var state = options.merge({style : style});
    if(null == children) children = [];
    return new RadioButton({ click : onClick }, state, children);
  }

  public static function createGroup<T>(style : ButtonStyle, values : Array<RadioButtonGroupItemState<T>>, onChange : T -> Void, ?options : RadioButtonGroupOptions) : Nodes {
    if(null == options) options = {};
    var itemOptions : RadioButtonState = {
      style : style,
      name : options.name,
      block : options.block,
      disabled: options.disabled,
      outline : options.outline,
      size: options.size
    };
    return values.map(function(value) : Node {
      var state : RadioButtonState = itemOptions.merge({
        active : value.active
      });
      return new RadioButton({
        click : onChange.bind(value.value)
      }, state, value.label);
    });
  }

/*
?block : Bool,
?active: Bool,
?disabled: Bool,
?outline : Bool,
?dropdownToggle : Bool,
?size: Size
*/
}

typedef RadioButtonGroupItemState<T> = {
  label : Node,
  value : T,
  active : Bool
}

typedef RadioButtonGroupOptions = {
  ?name : String,
  ?block : Bool,
  ?disabled: Bool,
  ?outline : Bool,
  ?size: Size
}

typedef RadioButtonApi = {
  click : Void -> Void
}

typedef RadioButtonOptions = {>ButtonOptions,
  ?name : String
}

typedef RadioButtonState = {>ButtonState,
  ?name : String
}
