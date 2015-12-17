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
      Label.create("Default label", Default).render(),
      Label.create("Primary label", Primary).render(),
      Label.create("Success label", Success).render(),
      Label.create("Info label", Info).render(),
      Label.create("Warning label", Warning).render(),
      Label.create("Danger label", Danger).render(),
    ]);
  }

  public function pillLabels() : Node {
    return DIV([
      H2("Pill labels"),
      Label.pill("Default label", Default).render(),
      Label.pill("Primary label", Primary).render(),
      Label.pill("Success label", Success).render(),
      Label.pill("Info label", Info).render(),
      Label.pill("Warning label", Warning).render(),
      Label.pill("Danger label", Danger).render(),
    ]);
  }
}
