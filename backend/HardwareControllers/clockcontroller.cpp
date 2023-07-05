#include "clockcontroller.h"

#include<QDateTime>
ClockController::ClockController(QObject *parent)
    :m_currentTime{"00:00"}, QObject{parent}
{

    connect(&m_clock, &QTimer::timeout, this, [=]() {
        QDateTime date = QDateTime::currentDateTime();
        this->setcurrentTime(date.toString("hh:mm:ss"));
    });

    m_clock.start(500);

}

QString ClockController::currentTime() const
{
    return m_currentTime;
}

void ClockController::setcurrentTime(const QString &newCurrentTime)
{
    if (m_currentTime == newCurrentTime)
        return;
    m_currentTime = newCurrentTime;
    emit currentTimeChanged();
}
