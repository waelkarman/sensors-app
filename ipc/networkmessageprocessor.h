#pragma once
#include <iostream>
#include <QThread>

using namespace std;

class networkMessageProcessor : public QThread
{
    Q_OBJECT
    Q_PROPERTY(QString networkstat READ getNetworkstat NOTIFY networkstatChanged)

public:
    networkMessageProcessor();
    QString getNetworkstat();

signals:
    void networkstatChanged();

private:
    void run() override;
    QString networkstat = "";
};
