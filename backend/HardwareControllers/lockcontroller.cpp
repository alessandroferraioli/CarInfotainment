#include "lockcontroller.h"

LockController::LockController(QObject *parent)
    : m_carLocked{true}, QObject{parent}
{

}

bool LockController::carLocked() const
{
    return m_carLocked;
}

void LockController::setCarLocked(bool newCarLocked)
{
    if (m_carLocked == newCarLocked)
        return;
    m_carLocked = newCarLocked;
    emit carLockedChanged();
}
