package doom.bs;

import doom.html.Html.*;

class Jumbotron extends doom.html.Component<JumbotronProps> {
  override function render()
    return div(["class" => "jumbotron"], children);
}

typedef JumbotronProps = {

}
