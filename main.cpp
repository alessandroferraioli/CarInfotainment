#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "backend/HardwareControllers/lockcontroller.h"
#include "backend/HardwareControllers/coolingsystemcontroller.h"
#include "backend/HardwareControllers/clockcontroller.h"
#include "backend/HardwareControllers/soundcontroller.h"

#include "backend/multimediacontroller.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    //Hardware Controllers
    LockController lock_controller;
    ClockController clock_controller;
    CoolingSystemController driver_cooling_system_controller;
    CoolingSystemController passenger_cooling_system_controller;
    SoundController sound_controller;

    MultimediaController multimedia_controller;

    QQmlContext* context(engine.rootContext());
    context->setContextProperty("LockController",&lock_controller);
    context->setContextProperty("DriverCoolingSystemController",&driver_cooling_system_controller);
    context->setContextProperty("PassengerCoolingSystemController",&passenger_cooling_system_controller);
    context->setContextProperty("ClockController",&clock_controller);
    context->setContextProperty("MultimediaController",&multimedia_controller);
    context->setContextProperty("SoundController",&sound_controller);


    const QUrl url(u"qrc:/CarInfotainment/Main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);



    return app.exec();
}
