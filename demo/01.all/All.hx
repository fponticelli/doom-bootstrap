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
    $type(doom.bs.Button.with);
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
      ])
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
      Label.create(Default, "Default label"),
      Label.create(Primary, "Primary label"),
      Label.create(Success, "Success label"),
      Label.create(Info, "Info label"),
      Label.create(Warning, "Warning label"),
      Label.create(Danger, "Danger label"),
    ]);
  }

  public function pillLabels() : Node {
    return section("Pill labels", [
      Label.pill(Default, "Default label"),
      Label.pill(Primary, "Primary label"),
      Label.pill(Success, "Success label"),
      Label.pill(Info, "Info label"),
      Label.pill(Warning, "Warning label"),
      Label.pill(Danger, "Danger label"),
    ]);
  }

  public function buttons() : Node {
    return section("Buttons", [
      button(onClick, Primary, "Primary button"),
      button(onClick, Secondary, "Secondary button"),
      button(onClick, Info, "Info button"),
      button(onClick, Success, "Success button"),
      button(onClick, Warning, "Warning button"),
      button(onClick, Danger, "Danger button"),
    ]);
  }

  public function outlineButtons() : Node {
    return section("Outline buttons", [
      button(onClick, Primary, { outline : true }, "Primary outline button"),
      button(onClick, Secondary, { outline : true }, "Secondary outline button"),
      button(onClick, Info, { outline : true }, "Info outline button"),
      button(onClick, Success, { outline : true }, "Success outline button"),
      button(onClick, Warning, { outline : true }, "Warning outline button"),
      button(onClick, Danger, { outline : true }, "Danger outline button"),
    ]);
  }

  public function groupButtons() : Node {
    return section("Buttons Group", [
      buttonGroup([
        button(function(){}, Primary, "left"),
        button(function(){}, Primary, "middle"),
        button(function(){}, Primary, "right")
      ])
    ]);
  }

  function onClick() trace('click');
}
