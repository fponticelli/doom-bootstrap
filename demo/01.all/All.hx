import js.html.*;
import Doom.*;
import doom.Node;
import BS.*;
import doom.*;
import doom.bs.*;
import doom.bs.Label.LabelType;
import doom.bs.Size;
import doom.bs.Button.ButtonStyle;


class All extends Component<{}, {}> {
  override function render() {
    return div(["class" => "container"], [
      div(["class" => "row"], [
        div(["class" => "col-md-12"], [
          h1(["class" => "display-1"], "Doom Bootstrap"),
        ]),
      ]),
      div(["class" => "row"], [
        div(["class" => "col-md-12"], [
          jumbotron([
            h1(["class" => "display-3"], "Jumbotron header"),
            p(["class" => "lead"], "This is some lead text in the Jumbotron!"),
            hr(["class" => "m-y-2"]),
            p("This is some normal text in the Jumbotron"),
            button(onClick, Primary, { size : Large }, "Learn more"),
          ])
        ]),
      ]),
      div(["class" => "row"], [
        div(["class" => "col-md-6"], [
          labels(),
        ]),
        div(["class" => "col-md-6"], [
          pillLabels(),
        ]),
      ]),
      div(["class" => "row"], [
        div(["class" => "col-md-6"], [
          buttons(),
        ]),
        div(["class" => "col-md-6"], [
          outlineButtons(),
        ]),
      ]),
      div(["class" => "row"], [
        div(["class" => "col-md-6"], [
          groupButtons(),
        ]),
        div(["class" => "col-md-6"], [
          alertSuccess("a permanent alert"),
          alertDanger({ dismissable : true }, "a dismissable alert")
        ]),
      ]),
      div(["class" => "row"], [
        div(["class" => "col-md-6"], [
          radioButtons(),
        ]),
        div(["class" => "col-md-6"], [
          progressBars()
        ]),
      ]),
    ]);
  }

  public function section(name : String, content : Array<Node>) {
    return div(["class" => "card"], [
      div(["class" => "card-block"], [
        h2(name)
      ].concat(content))
    ]);
  }

  public function labels() : Node {
    return section("Labels", [
      labelDefault("Default label"),
      labelPrimary("Primary label"),
      labelSuccess("Success label"),
      labelInfo("Info label"),
      labelWarning("Warning label"),
      labelDanger("Danger label"),
    ]);
  }

  public function pillLabels() : Node {
    return section("Pill labels", [
      pillDefault("Default label"),
      pillPrimary("Primary label"),
      pillSuccess("Success label"),
      pillInfo("Info label"),
      pillWarning("Warning label"),
      pillDanger("Danger label"),
    ]);
  }

  public function buttons() : Node {
    return section("Buttons", [
      buttonPrimary(onClick, "Primary button"),
      buttonSecondary(onClick, "Secondary button"),
      buttonInfo(onClick, "Info button"),
      buttonSuccess(onClick, "Success button"),
      buttonWarning(onClick, "Warning button"),
      buttonDanger(onClick, "Danger button"),
    ]);
  }

  public function outlineButtons() : Node {
    return section("Outline buttons", [
      buttonPrimary(onClick, { outline : true }, "Primary outline button"),
      buttonSecondary(onClick, { outline : true }, "Secondary outline button"),
      buttonInfo(onClick, { outline : true }, "Info outline button"),
      buttonSuccess(onClick, { outline : true }, "Success outline button"),
      buttonWarning(onClick, { outline : true }, "Warning outline button"),
      buttonDanger(onClick, { outline : true }, "Danger outline button"),
    ]);
  }

  public function groupButtons() : Node {
    return section("Buttons Group", [
      buttonGroup([
        buttonPrimary(function(){}, "left"),
        buttonPrimary(function(){}, "middle"),
        buttonPrimary(function(){}, "right")
      ])
    ]);
  }

  public function radioButtons() : Node {
    return section("Radio Button Group", [
      radioButtonGroup(function(value) trace('changed to $value'), [
        { label : "A", value : "a", active : true },
        { label : "B", value : "b" },
        { label : "C", value : "c" }
      ])
    ]);
  }

  public function progressBars() : Node {
    return section("Progress Bars", [
      progress(20, 100),
      progress(30, 100, { style : Success }),
      progress(40, 100, { style : Info }),
      progress(50, 100, { style : Warning }),
      progress(60, 100, { style : Danger }),
      progress(60, 100, { style : Danger, striped : true }),
      progress(60, 100, { style : Danger, striped : true, animated : true }),
    ]);
  }

  function onClick() trace('click');
}
