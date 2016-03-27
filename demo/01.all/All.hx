import js.html.*;
import doom.html.Html.*;
import doom.core.VNodes;
import doom.html.Html.*;
import doom.bs.BS.*;
import doom.bs.*;
import doom.bs.Label.LabelType;
// import doom.bs.Size;
// import doom.bs.Button.ButtonStyle;

class All extends doom.html.Component<{}> {
  override function render() {
    return div(["class" => "container"], [
      row([
        div(["class" => "col-md-12"], [
          h1(["class" => "display-1"], "Doom Bootstrap"),
        ]),
      ]),
      row([
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
      row2(
        labels(),
        pillLabels()
      ),
      row2(
        buttons(),
        outlineButtons()
      ),
      row2(
        groupButtons(),
        [
          alertSuccess("a permanent alert"),
          alertDanger({ dismissable : true }, "a dismissable alert")
        ]
      ),
      row2(
        radioButtons(),
        progressBars()
      ),
      row2(
        basicTable(),
        inverseTable()
      ),
      row2(
        stripedTable(),
        borderedInverseTable()
      ),
      row2(
        borderedTable(),
        hoverTable()
      ),
      row2(
        stripedHoverTable(),
        smallTable()
      ),
      row2(
        reflowTable(),
        []
      )
    ]);
  }

  public function row2(left : VNodes, right : VNodes) {
    return row([
      div(["class" => "col-md-6"], left),
      div(["class" => "col-md-6"], right)
    ]);
  }

  public function basicTable() {
    return section("Basic Table",
      table(tableContent())
    );
  }

  public function inverseTable() {
    return section("Inverse Table",
      table({ inverse : true }, tableContent())
    );
  }

  public function stripedTable() {
    return section("Striped Table",
      table({ striped : true }, tableContent())
    );
  }

  public function borderedTable() {
    return section("Bordered Table",
      table({ bordered : true }, tableContent())
    );
  }

  public function borderedInverseTable() {
    return section("Bordered Inverse Table",
      table({ bordered : true, inverse : true }, tableContent())
    );
  }

  public function hoverTable() {
    return section("Hover Table",
      table({ hover : true }, tableContent())
    );
  }

  public function stripedHoverTable() {
    return section("Striped Hover Table",
      table({ hover : true, striped : true }, tableContent())
    );
  }

  public function smallTable() {
    return section("Small Table",
      table({ small : true }, tableContent())
    );
  }

  public function reflowTable() {
    return section("Reflow Table",
      table({ reflow : true }, tableContent())
    );
  }

  function tableContent() : VNodes {
    return [
      thead(
        tr([th("#"),th("First Name"),th("Last Name"),th("Username")])
      ),
      tbody([
        tr([th("1"),td("Mark"),td("Otto"),td("@mdo")]),
        tr([th("2"),td("Jacob"),td("Thornton"),td("@fat")]),
        tr([th("3"),td("Larry"),td("the Bird"),td("@twitter")]),
      ])
    ];
  }

  public function section(name : String, content : VNodes) {
    return div(["class" => "card"], [
      div(["class" => "card-block"],
        h2(name).asNodes().concat(content)
      )
    ]);
  }

  public function labels() {
    return section("Labels", [
      labelDefault("Default label"),
      labelPrimary("Primary label"),
      labelSuccess("Success label"),
      labelInfo("Info label"),
      labelWarning("Warning label"),
      labelDanger("Danger label"),
    ]);
  }

  public function pillLabels() {
    return section("Pill labels", [
      pillDefault("Default label"),
      pillPrimary("Primary label"),
      pillSuccess("Success label"),
      pillInfo("Info label"),
      pillWarning("Warning label"),
      pillDanger("Danger label"),
    ]);
  }

  public function buttons() {
    return section("Buttons", [
      buttonPrimary(onClick, "Primary button"),
      buttonSecondary(onClick, "Secondary button"),
      buttonInfo(onClick, "Info button"),
      buttonSuccess(onClick, "Success button"),
      buttonWarning(onClick, "Warning button"),
      buttonDanger(onClick, "Danger button"),
    ]);
  }

  public function outlineButtons()
    return section("Outline buttons", [
      buttonPrimary(onClick, { outline : true }, "Primary outline button"),
      buttonSecondary(onClick, { outline : true }, "Secondary outline button"),
      buttonInfo(onClick, { outline : true }, "Info outline button"),
      buttonSuccess(onClick, { outline : true }, "Success outline button"),
      buttonWarning(onClick, { outline : true }, "Warning outline button"),
      buttonDanger(onClick, { outline : true }, "Danger outline button"),
    ]);

  public function groupButtons()
    return section("Buttons Group", [
      buttonGroup([
        buttonPrimary(function(){}, "left"),
        buttonPrimary(function(){}, "middle"),
        buttonPrimary(function(){}, "right")
      ])
    ]);

  public function radioButtons() {
    return section("Radio Button Group", [
      radioButtonGroup(function(value) trace('changed to $value'), [
        { label : "A", value : "a", active : true },
        { label : "B", value : "b" },
        { label : "C", value : "c" }
      ])
    ]);
  }

  public function progressBars() {
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
