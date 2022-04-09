public class Application : Gtk.Application {
	
	public Application () {
		Object(
			application_id: "com.github.neagiry.rfl",
			flags: GLib.ApplicationFlags.FLAGS_NONE
		);
	}
	
	protected override void activate () {
	// Создаём окно и его виджеты
		var window		=	new Gtk.ApplicationWindow (this);
		var combobox	=	new Gtk.ComboBox ();
	
	// Изменяем параметры окна и виджетов
		// Параметры окна
		window.resizable	=	false;
		window.window_position	=	Gtk.WindowPosition.CENTER;	// Приложение создаётся в цетре экрана
		window.default_height	=	600;						// Высота
		window.default_width	=	400;						// Ширина
		window.title = "Rufus For Linux";						// Заголовок окна
		// Параметры меню выбора
		combobox.valign			=	START;						// ХЗ как это работает
		combobox.halign			=	FILL;						// Просто методом тыка вставил
		combobox.margin			=	20;							// Вроде всё как нужно работает
		combobox.margin_bottom	=	5;							// Почему нельзя было просто использовать слова верх, низ, лево, право?
		combobox.margin_end		=	150;						// Серьёзно? Конец?
		combobox.margin_top		=	40;							// Топ 10 смертей на YouTube
	
	// Считывает показатели и выводит на окно
		window.add (combobox);									// Добавляет кнопку меню выбора
		window.show_all ();										// Окно
	}
	
}
