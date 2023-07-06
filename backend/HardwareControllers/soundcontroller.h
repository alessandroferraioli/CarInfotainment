#ifndef SOUNDCONTROLLER_H
#define SOUNDCONTROLLER_H

#include <QObject>

class SoundController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int volume_level READ volume_level WRITE setVolume_level NOTIFY volume_levelChanged)
public:
    explicit SoundController(QObject *parent = nullptr);

    int volume_level() const;
    void setVolume_level(int newVolume_level);

signals:

    void volume_levelChanged();
private:
    int m_volume_level;
};

#endif // SOUNDCONTROLLER_H
