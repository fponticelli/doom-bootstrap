import js.html.*;
import Doom.*;
import doom.*;
import doom.bs.*;
import doom.bs.Label.LabelType;
import doom.bs.Button.ButtonSize;
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
          new Jumbotron([
            h1(["class" => "display-3"], "Jumbotron header"),
            p(["class" => "lead"], "This is some lead text in the Jumbotron!"),
            hr(["class" => "m-y-2"]),
            p("This is some normal text in the Jumbotron"),
            button([
              "type" => "button",
              "class" => "btn btn-primary btn-lg"
            ], "Learn more"),
          ]).render()
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
      Label.create(Default, "Default label").render(),
      Label.create(Primary, "Primary label").render(),
      Label.create(Success, "Success label").render(),
      Label.create(Info, "Info label").render(),
      Label.create(Warning, "Warning label").render(),
      Label.create(Danger, "Danger label").render(),
    ]);
  }

  public function pillLabels() : Node {
    return section("Pill labels", [
      Label.pill(Default, "Default label").render(),
      Label.pill(Primary, "Primary label").render(),
      Label.pill(Success, "Success label").render(),
      Label.pill(Info, "Info label").render(),
      Label.pill(Warning, "Warning label").render(),
      Label.pill(Danger, "Danger label").render(),
    ]);
  }

  public function buttons() : Node {
    return section("Buttons", [
      Button.create(Primary, onClick, ["Primary button"]).render(),
      Button.create(Secondary, onClick, ["Secondary button"]).render(),
      Button.create(Info, onClick, ["Info button"]).render(),
      Button.create(Success, onClick, ["Success button"]).render(),
      Button.create(Warning, onClick, ["Warning button"]).render(),
      Button.create(Danger, onClick, ["Danger button"]).render(),
    ]);
  }

  public function outlineButtons() : Node {
    return section("Outline buttons", [
      Button.create(PrimaryOutline, onClick, ["Primary outline button"]).render(),
      Button.create(SecondaryOutline, onClick, ["Secondary outline button"]).render(),
      Button.create(InfoOutline, onClick, ["Info outline button"]).render(),
      Button.create(SuccessOutline, onClick, ["Success outline button"]).render(),
      Button.create(WarningOutline, onClick, ["Warning outline button"]).render(),
      Button.create(DangerOutline, onClick, ["Danger outline button"]).render(),
    ]);
  }

  function onClick() {
    trace('click');
  }
}
