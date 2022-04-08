public class Application : Gtk.Application {

	public Application () {
		Object(
			application_id: "com.github.neagiry.rfl",
			flags: GLib.ApplicationFlags.FLAGS_NONE
		);
	}

	protected override void activate () {
	// Создаёт объект Window и передаёт ему все параметры приложения
		var window = new Window (this);
	// Используется в 'window.vala'
		add_window (window);
	}

}

public class Window : Gtk.ApplicationWindow {

	public Window (Application Application) {
        Object (
            application: Application
        );
    }

    construct {
	// изначальная позиция окна
		window_position = Gtk.WindowPosition.CENTER;
	// размеры окна
		set_default_size (400, 600);
	// заголовок
		title = "RFL GUI";
	// считывает показатели окна (вызвав приложение через терминал, можно просто нажать на крестик чтобы закрыть)
		show_all ();
	}

}

public class TextMark : Object {

	public string name {

		get {

		}

		construct {

		}
	}

	public TextMark (
		Disk
		false
	);

} 
