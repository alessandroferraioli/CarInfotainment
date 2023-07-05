#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "backend/HardwareControllers/lockcontroller.h"
#include "backend/HardwareControllers/coolingsystemcontroller.h"
#include "backend/HardwareControllers/clockcontroller.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    //Hardware Controllers
    LockController lock_controller;
    ClockController clock_controller;
    CoolingSystemController cooling_system_controller;

    QQmlContext* context(engine.rootContext());
    context->setContextProperty("LockController",&lock_controller);
    context->setContextProperty("CoolingSystemController",&cooling_system_controller);
    context->setContextProperty("ClockController",&clock_controller);


    const QUrl url(u"qrc:/CarInfotainment/Main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);



    return app.exec();
}
