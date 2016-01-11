import js.html.*;
import BS.*;
import Doom.*;
import doom.*;
import doom.bs.*;
import doom.bs.Label.LabelType;
import doom.bs.Size;
import doom.bs.Button.ButtonStyle;


class All extends Component<{}, {}> {
  override function render() {
    $type(doom.bs.ButtonGroup.with);
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
      Button.with(onClick, Primary, "Primary button"),
      Button.with(onClick, Secondary, "Secondary button"),
      Button.with(onClick, Info, "Info button"),
      Button.with(onClick, Success, "Success button"),
      Button.with(onClick, Warning, "Warning button"),
      Button.with(onClick, Danger, "Danger button"),
    ]);
  }

  public function outlineButtons() : Node {
    return section("Outline buttons", [
      Button.with(onClick, Primary, { outline : true }, "Primary outline button"),
      Button.with(onClick, Secondary, { outline : true }, "Secondary outline button"),
      Button.with(onClick, Info, { outline : true }, "Info outline button"),
      Button.with(onClick, Success, { outline : true }, "Success outline button"),
      Button.with(onClick, Warning, { outline : true }, "Warning outline button"),
      Button.with(onClick, Danger, { outline : true }, "Danger outline button"),
    ]);
  }

  public function groupButtons() : Node {
    return section("Buttons Group", [
      ButtonGroup.with([
        Button.with(function(){}, Primary, "left"),
        Button.with(function(){}, Primary, "middle"),
        Button.with(function(){}, Primary, "right")
      ])
    ]);
  }

  function onClick() trace('click');
}
