#include "coolingsystemcontroller.h"


CoolingSystemController::CoolingSystemController(QObject *parent)
    :m_referenceTemperature{25}, QObject{parent}
{

}


float CoolingSystemController::referenceTemperature() const
{
    return m_referenceTemperature;
}

void CoolingSystemController::setReferenceTemperature(float newReferenceTemperature)
{
    if (m_referenceTemperature == newReferenceTemperature)
        return;

    if(newReferenceTemperature<=min_temperature)
    {
        newReferenceTemperature = min_temperature;
    }
    else if(newReferenceTemperature>=max_temperature)
    {
        newReferenceTemperature = max_temperature;
    }

    m_referenceTemperature = newReferenceTemperature;
    emit referenceTemperatureChanged();
}
