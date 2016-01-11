package doom.bs;

import Doom.*;
import doom.bs.Button.ButtonStyle;

class RadioButton extends Doom {
  @:api
  var click : Void -> Void;

  @:state(opt)
  var name : String;
  @:state
  var style : ButtonStyle;
  // @:state(false)
  // var block : Bool;
  @:state(false)
  var active : Bool;
  @:state(false)
  var disabled : Bool;
  @:state(false)
  var outline : Bool;
  // @:state(false)
  // var dropdownToggle : Bool;
  @:state(Default)
  var size : Size;

  override function render()
    return label([
        "class" => getClass(state),
        "click" => api.click
      ], [
        input([
          "type" => "radio",
          "name" => name,
          "autocomplete" => "off",
          "checked" => true
        ])
      ].concat(children));

  public static function getClass(state : RadioButtonState) : String {
    var classes = ["btn"],
        styleClass = switch state.style {
          case Primary: "btn-primary";
          case Secondary: "btn-secondary";
          case Info: "btn-info";
          case Success: "btn-success";
          case Warning: "btn-warning";
          case Danger: "btn-danger";
        };

    if(state.outline == true)
      styleClass += "-outline";
    classes.push(styleClass);

    var sizeClass = switch state.size {
      case null, Default: "";
      case Large: "btn-lg";
      case Small: "btn-sm";
    };
    classes.push(sizeClass);

    if (state.active == true)
      classes.push("active");

    return classes.join(" ");
  }

  // public static function group<T>(style : ButtonStyle, values : Array<RadioButtonGroupItemState<T>>, onChange : T -> Void, ?options : RadioButtonGroupOptions) : Nodes {
  //   if(null == options) options = {};
  //   var itemOptions : RadioButtonState = {
  //     style : style,
  //     name : options.name,
  //     block : options.block,
  //     disabled: options.disabled,
  //     outline : options.outline,
  //     size: options.size
  //   };
  //   return values.map(function(value) : Node {
  //     var state : RadioButtonState = itemOptions.merge({
  //       active : value.active
  //     });
  //     return new RadioButton({
  //       click : onChange.bind(value.value)
  //     }, state, value.label);
  //   });
  // }

/*
?block : Bool,
?active: Bool,
?disabled: Bool,
?outline : Bool,
?dropdownToggle : Bool,
?size: Size
*/
}
/*
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

// typedef RadioButtonOptions = {>ButtonOptions,
//   ?name : String
// }

typedef RadioButtonState = {>ButtonState,
  ?name : String
}
*/
