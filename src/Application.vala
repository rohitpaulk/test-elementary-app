public class MyApp : Gtk.Application {
	public MyApp() {
		Object (
			application_id: "com.github.rohitpaulk.hello-again",
			flags: ApplicationFlags.FLAGS_NONE

		);
	}

	protected override void activate () {
		var label = new Gtk.Label ("Hello Again World");
		label.margin = 12;
		var main_window = new Gtk.ApplicationWindow (this);
		main_window.add(label);
		main_window.show_all();
	}

	public static int main(string[] args) {
		var app = new MyApp ();
		return app.run (args);
	}
}
