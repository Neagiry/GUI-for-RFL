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
	
		var DriveProperties = new Gtk.Label ("");
	
		DriveProperties.set_markup	("<big><b>Drive properties</b></big>");
		DriveProperties.halign		=	START;
		DriveProperties.margin		=	20;
	
		var Devices = new Gtk.Label ("Devices");
	
		Devices.halign				=	START;
		Devices.margin_start		=	20;
	
		var BootSelection = new Gtk.Label ("Boot selection");
	
		BootSelection.halign		=	START;
		BootSelection.margin_top	=	20;
		BootSelection.margin_start	=	20;
	
		var FormatOption = new Gtk.Label ("");
	
		FormatOption.set_markup	("<big><b>Format option</b></big>");
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
		FileSystem.margin_start		=	10;
	
		var Status = new Gtk.Label ("");
	
		Status.set_markup	("<big><b>Status</b></big>");
		Status.halign				=	START;
		Status.margin_start			=	20;
		Status.margin_top			=	40;
		Status.margin_bottom		=	60;
	
		var SelectButton = new Gtk.Button.with_label ("Select");
	
		SelectButton.halign			=	FILL;
		SelectButton.margin_top		=	5;
		SelectButton.margin_start	=	10;
	
		var DeviceComboBox = new Gtk.ComboBoxText.with_entry ();
	
		DeviceComboBox.append_text	("Disk or ISO image (Please select)");
		DeviceComboBox.halign		=	FILL;
		DeviceComboBox.margin_top	=	5;
		DeviceComboBox.margin_start	=	20;
	
		var DisckImage = new Gtk.ComboBox.with_entry ();
	
		DisckImage.halign			=	FILL;
		DisckImage.margin_top		=	5;
		DisckImage.margin_start		=	20;
	
		var ValumeEntry = new Gtk.Entry ();
	
		ValumeEntry.halign			=	FILL;
		ValumeEntry.margin_start	=	20;
	
		var FileSystemBox = new Gtk.ComboBox.with_entry ();
	
		FileSystemBox.halign		=	FILL;
		FileSystemBox.margin_start	=	10;
	
		var StatusBar = new Gtk.Statusbar ();
	
		StatusBar.halign			=	FILL;
		StatusBar.margin_start		=	20;
		StatusBar.get_context_id	("Ready");
	
		var StartButton = new Gtk.Button.with_label ("Start");
	
		StartButton.halign			=	FILL;
		StartButton.margin_end		=	10;
		StartButton.margin_top		=	90;
	
		var CloseButton = new Gtk.Button.with_label ("Close");
	
		CloseButton.halign			=	FILL;
		CloseButton.margin_top		=	90;
		CloseButton.clicked.connect (() => {
			window.close ();
		});
	
		var grid = new Gtk.Grid ();
	
		grid.attach (DriveProperties,	0,	0,	1,	1);
		grid.attach (Devices,			0,	1,	1,	1);
		grid.attach (DeviceComboBox,	0,	2,	4,	1);
		grid.attach (BootSelection,		0,	3,	1,	1);
		grid.attach (DisckImage,		0,	4,	3,	1);
		grid.attach (SelectButton,		3,	4,	1,	1);
		grid.attach (FormatOption,		0,	5,	1,	1);
		grid.attach (ValumeLabel,		0,	6,	1,	1);
		grid.attach (FileSystem,		2,	6,	1,	1);
		grid.attach (ValumeEntry,		0,	7,	2,	1);
		grid.attach (FileSystemBox,		2,	7,	2,	1);
		grid.attach (Status,			0,	8,	1,	1);
		grid.attach (StatusBar,			0,	9,	4,	1);
		grid.attach (StartButton,		2,	10,	1,	1);
		grid.attach (CloseButton,		3,	10,	1,	1);
	
		window.child = grid;
		window.show_all ();
	}

}
