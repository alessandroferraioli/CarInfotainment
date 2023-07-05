#ifndef MULTIMEDIACONTROLLER_H
#define MULTIMEDIACONTROLLER_H

#include <QObject>

class MultimediaController : public QObject
{
    Q_OBJECT
public:
    explicit MultimediaController(QObject *parent = nullptr);

signals:

public slots:
    void onOpenUrl(const QString& url);

};

#endif // MULTIMEDIACONTROLLER_H
