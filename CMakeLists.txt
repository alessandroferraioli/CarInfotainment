cmake_minimum_required(VERSION 3.16)

project(CarInfotainment VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 REQUIRED COMPONENTS Quick)
find_package(Qt6 COMPONENTS Core)
find_package(Qt6 COMPONENTS Gui)
find_package(Qt6 COMPONENTS Location)
find_package(Qt6 COMPONENTS Qml)

qt_add_executable(appCarInfotainment
    resources.qrc
    main.cpp
    backend/HardwareControllers/lockcontroller.cpp
    backend/HardwareControllers/clockcontroller.cpp
    backend/HardwareControllers/coolingsystemcontroller.cpp
)


target_link_libraries(appCarInfotainment
    PRIVATE Qt6::Quick
    Qt::Core
    Qt::Gui
    Qt::Location
    Qt::Qml
)

qt_add_qml_module(appCarInfotainment
    URI CarInfotainment
    VERSION 1.0
    QML_FILES
        Main.qml
        ui/BottomBar/BottomBar.qml
        ui/RightPanel/RightPanel.qml
        ui/RightPanel/MapModule.qml
        ui/RightPanel/SystemBar.qml
        ui/LeftPanel/LeftPanel.qml
)

set_target_properties(appCarInfotainment PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)



install(TARGETS appCarInfotainment
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
