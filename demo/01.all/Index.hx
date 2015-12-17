import Doom;
import jQuery.JQuery;

class Index {
  public static function main() {
    new JQuery(function() {
      Doom.mount(new All({}, {}), js.Browser.document.getElementById("root"));
    });
  }
}
