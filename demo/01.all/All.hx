import Doom.*;
import doom.*;
import doom.bs.*;
import doom.bs.Label.LabelType;

class All extends Component<{}, {}> {
  override function render() {
    return DIV(["class" => "container"], [
      DIV(["class" => "row"], [
        DIV(["class" => "col-md-12"], [
          H1("Doom Bootstrap Demo"),
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
