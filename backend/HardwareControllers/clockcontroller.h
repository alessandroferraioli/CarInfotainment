#ifndef CLOCKCONTROLLER_H
#define CLOCKCONTROLLER_H

#include <QObject>
#include <QString>
#include <QTimer>
class ClockController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString currentTime READ currentTime WRITE setcurrentTime NOTIFY currentTimeChanged)
public:
    explicit ClockController(QObject *parent = nullptr);

    QString currentTime() const;
    void setcurrentTime(const QString &newCurrentTime);

signals:

    void currentTimeChanged();
private:
    QString m_currentTime;
    QTimer m_clock;

};

#endif // CLOCKCONTROLLER_H
