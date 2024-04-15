#pragma once
#include <iostream>
#include <QThread>

using namespace std;

class buzzerMessageProcessor : public QThread
{
    Q_OBJECT
    Q_PROPERTY(QString buzzerstat READ getBuzzerstat NOTIFY buzzerstatChanged)

public:
    buzzerMessageProcessor();
    QString getBuzzerstat();

signals:
    void buzzerstatChanged();

private:
    void run() override;
    QString buzzerstat = "";
};
