import Doom.*;
import doom.*;
import doom.bs.*;
import doom.bs.Label.LabelType;

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
          labels()
        ]),
        DIV(["class" => "col-md-6"], [
          pillLabels()
        ])
      ])
    ]);
  }

  public function labels() : Node {
    return DIV([
      H2("Labels"),
      new Label({}, { text: "Default label", type: Default }).render(),
      new Label({}, { text: "Primary label", type: Primary }).render(),
      new Label({}, { text: "Success label", type: Success }).render(),
      new Label({}, { text: "Info label", type: Info }).render(),
      new Label({}, { text: "Warning label", type: Warning }).render(),
      new Label({}, { text: "Danger label", type: Danger }).render(),
    ]);
  }

  public function pillLabels() : Node {
    return DIV([
      H2("Pill labels"),
      new Label({}, { text: "Default label", type: Default, isPill: true }).render(),
      new Label({}, { text: "Primary label", type: Primary, isPill: true }).render(),
      new Label({}, { text: "Success label", type: Success, isPill: true }).render(),
      new Label({}, { text: "Info label", type: Info, isPill: true }).render(),
      new Label({}, { text: "Warning label", type: Warning, isPill: true }).render(),
      new Label({}, { text: "Danger label", type: Danger, isPill: true }).render(),
    ]);
  }
}
