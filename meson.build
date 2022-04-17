project('com.github.neagiry.rfl', ['c', 'vala'],
          version: '0.1.0',
    meson_version: '>= 0.53.0',
  default_options: [ 'warning_level=2',
                     'werror=false',
                   ],
)

executable(
    meson.project_name(),

    'src/main.vala',
    'src/application.vala',
    'src/window.vala',

    dependencies: [
        dependency('gtk+-3.0'),
    ],

    install: true
)
