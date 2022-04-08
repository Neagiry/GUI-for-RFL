project('com.github.neagiry.rfl', 'vala', 'c')

executable(
    meson.project_name(),

    'src/main.vala',
    'src/application.vala',
    'src/microsettings.vala',
    
    dependencies: [
        dependency('gee-0.8'),
        dependency('glib-2.0'),
        dependency('gobject-2.0'),
        dependency('gtk+-3.0'),
        dependency('granite', version: '>=6.2.0'),
        dependency('libhandy-1', version: '>=0.83.0'),
    ],

    install: true
)
