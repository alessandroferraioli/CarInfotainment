#ifndef COOLINGSYSTEMCONTROLLER_H
#define COOLINGSYSTEMCONTROLLER_H

#include <QObject>

constexpr float min_temperature{16.0};
constexpr float max_temperature{30.0};

class CoolingSystemController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(float referenceTemperature READ referenceTemperature WRITE setReferenceTemperature NOTIFY referenceTemperatureChanged)
public:
    explicit CoolingSystemController(QObject *parent = nullptr);

    float referenceTemperature() const;
    void setReferenceTemperature(float newReferenceTemperature);

signals:

    void referenceTemperatureChanged();
private:
    float m_referenceTemperature;
};

#endif // COOLINGSYSTEMCONTROLLER_H
