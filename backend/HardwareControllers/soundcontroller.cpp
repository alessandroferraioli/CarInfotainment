#include "soundcontroller.h"

SoundController::SoundController(QObject *parent)
    :m_volume_level{5}, QObject{parent}
{

}


int SoundController::volume_level() const
{
    return m_volume_level;
}

void SoundController::setVolume_level(int newVolume_level)
{
    if (m_volume_level == newVolume_level)
        return;

    if(newVolume_level<=0){
        newVolume_level = 0;
    }
    else if(newVolume_level>=10)
    {
        newVolume_level = 10;
    }
    m_volume_level = newVolume_level;
    emit volume_levelChanged();
}
