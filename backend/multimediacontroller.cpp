#include "multimediacontroller.h"

#include <QDesktopServices>
#include <QUrl>
MultimediaController::MultimediaController(QObject *parent)
    : QObject{parent}
{

}

void MultimediaController::onOpenUrl(const QString &url)
{
    QDesktopServices::openUrl(QUrl(url));

}
