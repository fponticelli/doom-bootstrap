import js.html.*;
import Doom.*;
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
      div(["class" => "row"], [
        div(["class" => "col-md-6"], [
          groupButtons(),
        ]),
        // div(["class" => "col-md-6"], [
        //   outlineButtons(),
        // ]),
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
      Button.create(Primary, onClick, "Primary button"),
      Button.create(Secondary, onClick, "Secondary button"),
      Button.create(Info, onClick, "Info button"),
      Button.create(Success, onClick, "Success button"),
      Button.create(Warning, onClick, "Warning button"),
      Button.create(Danger, onClick, "Danger button"),
    ]);
  }

  public function outlineButtons() : Node {
    return section("Outline buttons", [
      Button.create(Primary, { outline : true }, onClick, "Primary outline button"),
      Button.create(Secondary, { outline : true }, onClick, "Secondary outline button"),
      Button.create(Info, { outline : true }, onClick, "Info outline button"),
      Button.create(Success, { outline : true }, onClick, "Success outline button"),
      Button.create(Warning, { outline : true }, onClick, "Warning outline button"),
      Button.create(Danger, { outline : true }, onClick, "Danger outline button"),
    ]);
  }

  public function groupButtons() : Node {
    return section("Buttons Group", [
      ButtonGroup.create([
        Button.create(Primary, function(){}, "left"),
        Button.create(Primary, function(){}, "middle"),
        Button.create(Primary, function(){}, "right")
      ])
    ]);
  }

  function onClick() {
    trace('click');
  }
}
