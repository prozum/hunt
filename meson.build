project('hunt', 'cpp')
qtmodule = import('qt5')

qt_dep = dependency('qt5', 
                    modules: ['Core', 'Gui', 'Widgets', 'Qml'])

prep = qtmodule.preprocess(qresources : ['qml.qrc'])

hunt_exe = executable('hunt',
                      sources: ['main.cpp', prep],
                      dependencies: qt_dep)
