#pragma once
#include <iostream>
#include <QThread>

using namespace std;

class buttonMessageProcessor : public QThread
{
    Q_OBJECT
    Q_PROPERTY(QString buttonstat READ getButtonstat NOTIFY buttonstatChanged)

public:
    buttonMessageProcessor();
    QString getButtonstat();

signals:
    void buttonstatChanged();

private:
    void run() override;
    QString buttonstat = "";
};
