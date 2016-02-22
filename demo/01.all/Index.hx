import jQuery.JQuery;

class Index {
  public static function main() {
    new JQuery(function() {
      Doom.browser.mount(new All({}), js.Browser.document.getElementById("root"));
    });
  }
}
