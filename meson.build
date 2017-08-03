project('hunt', 'cpp')

qt_dep = dependency('qt5', 
                    modules: ['Core', 'Gui', 'Widgets', 'Qml'])

qtmodule = import('qt5')
prep = qtmodule.preprocess(
      qresources : ['qml.qrc'])

hunt_exe = executable('hunt',
                      sources: ['main.cpp', prep],
                      dependencies: qt_dep)
