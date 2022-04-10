public class Application : Gtk.Application {
	
	public Application () {
		Object(
			application_id: "com.github.neagiry.rfl",
			flags: GLib.ApplicationFlags.FLAGS_NONE
		);
	}
	
	protected override void activate () {
	
		var window = new Gtk.ApplicationWindow (this);
	
		window.title				=	"Rufus For Linux";
		window.default_height		=	600;
		window.default_width		=	400;
		window.resizable			=	false;
		window.window_position		=	Gtk.WindowPosition.CENTER;
	
		var DriveProperties = new Gtk.Label ("Drive properties");
	
		DriveProperties.halign		=	START;
		DriveProperties.margin		=	20;
	
		var Devices = new Gtk.Label ("Devices");
	
		Devices.halign				=	START;
		Devices.margin_start		=	20;
	
		var BootSelection = new Gtk.Label ("Boot selection");
	
		BootSelection.halign		=	START;
		BootSelection.margin_top	=	20;
		BootSelection.margin_start	=	20;
	
		var FormatOption = new Gtk.Label ("Format option");
	
		FormatOption.halign			=	START;
		FormatOption.margin_top		=	40;
		FormatOption.margin_start	=	20;
		FormatOption.margin_bottom	=	20;
	
		var ValumeLabel = new Gtk.Label ("Valume label");
	
		ValumeLabel.halign			=	START;
		ValumeLabel.margin_bottom	=	5;
		ValumeLabel.margin_start	=	20;
	
		var FileSystem = new Gtk.Label ("File system");
	
		FileSystem.halign			=	START;
		FileSystem.margin_bottom	=	5;
		FileSystem.margin_start		=	40;
	
		var Status = new Gtk.Label ("Status");
	
		Status.halign				=	START;
		Status.margin_start			=	20;
		Status.margin_top			=	40;
		Status.margin_bottom		=	60;
	
		var SelectButton = new Gtk.Button.with_label ("Select");
	
		SelectButton.halign			=	FILL;
		SelectButton.margin_top		=	5;
		SelectButton.margin_start	=	50;
	
		var DeviceComboBox = new Gtk.ComboBox ();
	
		DeviceComboBox.halign		=	FILL;
		DeviceComboBox.margin_top	=	5;
		DeviceComboBox.margin_start	=	20;
	
		var DisckImage = new Gtk.ComboBox ();
	
		DisckImage.halign			=	FILL;
		DisckImage.margin_top		=	5;
		DisckImage.margin_start		=	20;
	
		var ValumeEntry = new Gtk.Entry ();
	
		ValumeEntry.halign			=	FILL;
		ValumeEntry.margin_top		=	5;
		ValumeEntry.margin_start	=	20;
	
		var FileSystemBox = new Gtk.ComboBox ();
	
		FileSystemBox.halign		=	FILL;
		FileSystemBox.margin_top	=	5;
		FileSystemBox.margin_start	=	40;
	
		var StatusBar = new Gtk.Statusbar ();
	
		StatusBar.halign			=	FILL;
		StatusBar.margin_start		=	20;
	
		var StartButton = new Gtk.Button.with_label ("Start");
	
		StartButton.halign			=	START;
		StartButton.margin_start	=	20;
		StartButton.margin_top		=	90;
	
		var CloseButton = new Gtk.Button.with_label ("Close");
	
		CloseButton.halign			=	START;
		CloseButton.margin_start	=	20;
		CloseButton.margin_top		=	90;
		CloseButton.clicked.connect (() => {
			window.close ();
		}
		);
	
		var grid = new Gtk.Grid ();
	
		grid.attach (DriveProperties,	0,	0);
		grid.attach (Devices,			0,	1);
		grid.attach (DeviceComboBox,	0,	2);
		grid.attach (BootSelection,		0,	3);
		grid.attach (DisckImage,		0,	4);
		grid.attach (SelectButton,		1,	4);
		grid.attach (FormatOption,		0,	5);
		grid.attach (ValumeLabel,		0,	6);
		grid.attach (FileSystem,		1,	6);
		grid.attach (ValumeEntry,		0,	7);
		grid.attach (FileSystemBox,		1,	7);
		grid.attach (Status,			0,	8);
		grid.attach (StatusBar,			0,	9);
		grid.attach (StartButton,		0,	10);
		grid.attach (CloseButton,		1,	10);
	
		window.child = grid;
		window.show_all ();
	}

}
