#ifndef LOCKCONTROLLER_H
#define LOCKCONTROLLER_H

#include <QObject>

class LockController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool carLocked READ carLocked WRITE setCarLocked NOTIFY carLockedChanged)
public:
    explicit LockController(QObject *parent = nullptr);

    bool carLocked() const;
    void setCarLocked(bool newCarLocked);

signals:

    void carLockedChanged();
private:
    bool m_carLocked;
};

#endif // LOCKCONTROLLER_H
