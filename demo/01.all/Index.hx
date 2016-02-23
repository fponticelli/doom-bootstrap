class Index {
  public static function main() {
    Doom.browser.mount(new All({}), js.Browser.document.getElementById("root"));
  }
}
