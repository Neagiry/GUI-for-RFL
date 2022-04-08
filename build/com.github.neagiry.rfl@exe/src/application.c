/* application.c generated by valac 0.48.24, the Vala compiler
 * generated from application.vala, do not modify */

#include <gtk/gtk.h>
#include <glib-object.h>
#include <gio/gio.h>
#include <glib.h>

#define TYPE_APPLICATION (application_get_type ())
#define APPLICATION(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), TYPE_APPLICATION, Application))
#define APPLICATION_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), TYPE_APPLICATION, ApplicationClass))
#define IS_APPLICATION(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), TYPE_APPLICATION))
#define IS_APPLICATION_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), TYPE_APPLICATION))
#define APPLICATION_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), TYPE_APPLICATION, ApplicationClass))

typedef struct _Application Application;
typedef struct _ApplicationClass ApplicationClass;
typedef struct _ApplicationPrivate ApplicationPrivate;
enum  {
	APPLICATION_0_PROPERTY,
	APPLICATION_NUM_PROPERTIES
};
static GParamSpec* application_properties[APPLICATION_NUM_PROPERTIES];

#define RFL_WINDOW_TYPE_WINDOW (rfl_window_window_get_type ())
#define RFL_WINDOW_WINDOW(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), RFL_WINDOW_TYPE_WINDOW, RFLWindowWindow))
#define RFL_WINDOW_WINDOW_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), RFL_WINDOW_TYPE_WINDOW, RFLWindowWindowClass))
#define RFL_WINDOW_IS_WINDOW(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), RFL_WINDOW_TYPE_WINDOW))
#define RFL_WINDOW_IS_WINDOW_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), RFL_WINDOW_TYPE_WINDOW))
#define RFL_WINDOW_WINDOW_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), RFL_WINDOW_TYPE_WINDOW, RFLWindowWindowClass))

typedef struct _RFLWindowWindow RFLWindowWindow;
typedef struct _RFLWindowWindowClass RFLWindowWindowClass;
#define _g_object_unref0(var) ((var == NULL) ? NULL : (var = (g_object_unref (var), NULL)))
typedef struct _RFLWindowWindowPrivate RFLWindowWindowPrivate;
enum  {
	RFL_WINDOW_WINDOW_0_PROPERTY,
	RFL_WINDOW_WINDOW_NUM_PROPERTIES
};
static GParamSpec* rfl_window_window_properties[RFL_WINDOW_WINDOW_NUM_PROPERTIES];

struct _Application {
	GtkApplication parent_instance;
	ApplicationPrivate * priv;
};

struct _ApplicationClass {
	GtkApplicationClass parent_class;
};

struct _RFLWindowWindow {
	GtkApplicationWindow parent_instance;
	RFLWindowWindowPrivate * priv;
};

struct _RFLWindowWindowClass {
	GtkApplicationWindowClass parent_class;
};

static gpointer application_parent_class = NULL;
static gpointer rfl_window_window_parent_class = NULL;

GType application_get_type (void) G_GNUC_CONST;
G_DEFINE_AUTOPTR_CLEANUP_FUNC (Application, g_object_unref)
Application* application_new (void);
Application* application_construct (GType object_type);
static void application_real_activate (GApplication* base);
GType rfl_window_window_get_type (void) G_GNUC_CONST;
G_DEFINE_AUTOPTR_CLEANUP_FUNC (RFLWindowWindow, g_object_unref)
RFLWindowWindow* rfl_window_window_new (Application* Application);
RFLWindowWindow* rfl_window_window_construct (GType object_type,
                                              Application* Application);
static GType application_get_type_once (void);
static GObject * rfl_window_window_constructor (GType type,
                                         guint n_construct_properties,
                                         GObjectConstructParam * construct_properties);
static GType rfl_window_window_get_type_once (void);

Application*
application_construct (GType object_type)
{
	Application * self = NULL;
#line 4 "../src/application.vala"
	self = (Application*) g_object_new (object_type, "application-id", "com.github.neagiry.rfl", "flags", G_APPLICATION_FLAGS_NONE, NULL);
#line 3 "../src/application.vala"
	return self;
#line 88 "application.c"
}

Application*
application_new (void)
{
#line 3 "../src/application.vala"
	return application_construct (TYPE_APPLICATION);
#line 96 "application.c"
}

static void
application_real_activate (GApplication* base)
{
	Application * self;
	RFLWindowWindow* window = NULL;
	RFLWindowWindow* _tmp0_;
#line 10 "../src/application.vala"
	self = (Application*) base;
#line 12 "../src/application.vala"
	_tmp0_ = rfl_window_window_new (self);
#line 12 "../src/application.vala"
	g_object_ref_sink (_tmp0_);
#line 12 "../src/application.vala"
	window = _tmp0_;
#line 14 "../src/application.vala"
	gtk_application_add_window ((GtkApplication*) self, (GtkWindow*) window);
#line 10 "../src/application.vala"
	_g_object_unref0 (window);
#line 117 "application.c"
}

static void
application_class_init (ApplicationClass * klass,
                        gpointer klass_data)
{
#line 1 "../src/application.vala"
	application_parent_class = g_type_class_peek_parent (klass);
#line 1 "../src/application.vala"
	((GApplicationClass *) klass)->activate = (void (*) (GApplication*)) application_real_activate;
#line 128 "application.c"
}

static void
application_instance_init (Application * self,
                           gpointer klass)
{
}

static GType
application_get_type_once (void)
{
	static const GTypeInfo g_define_type_info = { sizeof (ApplicationClass), (GBaseInitFunc) NULL, (GBaseFinalizeFunc) NULL, (GClassInitFunc) application_class_init, (GClassFinalizeFunc) NULL, NULL, sizeof (Application), 0, (GInstanceInitFunc) application_instance_init, NULL };
	GType application_type_id;
	application_type_id = g_type_register_static (gtk_application_get_type (), "Application", &g_define_type_info, 0);
	return application_type_id;
}

GType
application_get_type (void)
{
	static volatile gsize application_type_id__volatile = 0;
	if (g_once_init_enter (&application_type_id__volatile)) {
		GType application_type_id;
		application_type_id = application_get_type_once ();
		g_once_init_leave (&application_type_id__volatile, application_type_id);
	}
	return application_type_id__volatile;
}

RFLWindowWindow*
rfl_window_window_construct (GType object_type,
                             Application* Application)
{
	RFLWindowWindow * self = NULL;
#line 21 "../src/application.vala"
	g_return_val_if_fail (Application != NULL, NULL);
#line 22 "../src/application.vala"
	self = (RFLWindowWindow*) g_object_new (object_type, "application", Application, NULL);
#line 21 "../src/application.vala"
	return self;
#line 169 "application.c"
}

RFLWindowWindow*
rfl_window_window_new (Application* Application)
{
#line 21 "../src/application.vala"
	return rfl_window_window_construct (RFL_WINDOW_TYPE_WINDOW, Application);
#line 177 "application.c"
}

static GObject *
rfl_window_window_constructor (GType type,
                               guint n_construct_properties,
                               GObjectConstructParam * construct_properties)
{
	GObject * obj;
	GObjectClass * parent_class;
	RFLWindowWindow * self;
#line 27 "../src/application.vala"
	parent_class = G_OBJECT_CLASS (rfl_window_window_parent_class);
#line 27 "../src/application.vala"
	obj = parent_class->constructor (type, n_construct_properties, construct_properties);
#line 27 "../src/application.vala"
	self = G_TYPE_CHECK_INSTANCE_CAST (obj, RFL_WINDOW_TYPE_WINDOW, RFLWindowWindow);
#line 29 "../src/application.vala"
	g_object_set ((GtkWindow*) self, "window-position", GTK_WIN_POS_CENTER, NULL);
#line 31 "../src/application.vala"
	gtk_window_set_default_size ((GtkWindow*) self, 400, 600);
#line 33 "../src/application.vala"
	gtk_window_set_title ((GtkWindow*) self, "RFL GUI");
#line 35 "../src/application.vala"
	gtk_widget_show_all ((GtkWidget*) self);
#line 27 "../src/application.vala"
	return obj;
#line 204 "application.c"
}

static void
rfl_window_window_class_init (RFLWindowWindowClass * klass,
                              gpointer klass_data)
{
#line 19 "../src/application.vala"
	rfl_window_window_parent_class = g_type_class_peek_parent (klass);
#line 19 "../src/application.vala"
	G_OBJECT_CLASS (klass)->constructor = rfl_window_window_constructor;
#line 215 "application.c"
}

static void
rfl_window_window_instance_init (RFLWindowWindow * self,
                                 gpointer klass)
{
}

static GType
rfl_window_window_get_type_once (void)
{
	static const GTypeInfo g_define_type_info = { sizeof (RFLWindowWindowClass), (GBaseInitFunc) NULL, (GBaseFinalizeFunc) NULL, (GClassInitFunc) rfl_window_window_class_init, (GClassFinalizeFunc) NULL, NULL, sizeof (RFLWindowWindow), 0, (GInstanceInitFunc) rfl_window_window_instance_init, NULL };
	GType rfl_window_window_type_id;
	rfl_window_window_type_id = g_type_register_static (gtk_application_window_get_type (), "RFLWindowWindow", &g_define_type_info, 0);
	return rfl_window_window_type_id;
}

GType
rfl_window_window_get_type (void)
{
	static volatile gsize rfl_window_window_type_id__volatile = 0;
	if (g_once_init_enter (&rfl_window_window_type_id__volatile)) {
		GType rfl_window_window_type_id;
		rfl_window_window_type_id = rfl_window_window_get_type_once ();
		g_once_init_leave (&rfl_window_window_type_id__volatile, rfl_window_window_type_id);
	}
	return rfl_window_window_type_id__volatile;
}

