import js.html.*;
import Doom.*;
import doom.*;
import doom.bs.*;
import doom.bs.Label.LabelType;
import doom.bs.Button.ButtonSize;
import doom.bs.Button.ButtonStyle;

class All extends Component<{}, {}> {
  override function render() {
    return DIV(["class" => "container"], [
      DIV(["class" => "row"], [
        DIV(["class" => "col-md-12"], [
          H1(["class" => "display-1"], "Doom Bootstrap"),
        ]),
      ]),
      DIV(["class" => "row"], [
        DIV(["class" => "col-md-12"], [
          new Jumbotron([
            H1(["class" => "display-3"], "Jumbotron header"),
            P(["class" => "lead"], "This is some lead text in the Jumbotron!"),
            HR(["class" => "m-y-2"]),
            P("This is some normal text in the Jumbotron"),
            BUTTON([
              "type" => "button",
              "class" => "btn btn-primary btn-lg"
            ], "Learn more"),
          ]).render()
        ]),
      ]),
      DIV(["class" => "row"], [
        DIV(["class" => "col-md-6"], [
          labels(),
        ]),
        DIV(["class" => "col-md-6"], [
          pillLabels(),
        ]),
      ]),
      DIV(["class" => "row"], [
        DIV(["class" => "col-md-6"], [
          buttons(),
        ]),
        DIV(["class" => "col-md-6"], [
          outlineButtons(),
        ]),
      ]),
    ]);
  }

  public function section(name : String, content : Array<Node>) {
    return DIV(["class" => "card"], [
      DIV(["class" => "card-block"], [
        H2(name)
      ].concat(content))
    ]);
  }

  public function labels() : Node {
    return section("Labels", [
      Label.create("Default label", Default).render(),
      Label.create("Primary label", Primary).render(),
      Label.create("Success label", Success).render(),
      Label.create("Info label", Info).render(),
      Label.create("Warning label", Warning).render(),
      Label.create("Danger label", Danger).render(),
    ]);
  }

  public function pillLabels() : Node {
    return section("Pill labels", [
      Label.pill("Default label", Default).render(),
      Label.pill("Primary label", Primary).render(),
      Label.pill("Success label", Success).render(),
      Label.pill("Info label", Info).render(),
      Label.pill("Warning label", Warning).render(),
      Label.pill("Danger label", Danger).render(),
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
