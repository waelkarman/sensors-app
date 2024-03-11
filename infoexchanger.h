#ifndef INFOEXCHANGER_H
#define INFOEXCHANGER_H

#include <QObject>
#include <QString>
#include <QThread>
#include <QDebug>

#include <zmqpp/zmqpp.hpp>
#include <ostream>
#include <iostream>
#include <string>
#include <chrono>
#include <thread>
#include <zmq.hpp>
#include <zmqprocess.h>
#include <zhelpers.h>


class infoExchanger : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString m_value0 READ getvalue0 NOTIFY priorityChanged0)
    Q_PROPERTY(QString m_value1 READ getvalue1 NOTIFY  priorityChanged1)
    Q_PROPERTY(QString m_value2 READ getvalue2 WRITE setvalue2 NOTIFY priorityChanged2)
    Q_PROPERTY(QString m_value3 READ getvalue3 NOTIFY priorityChanged3)
    Q_PROPERTY(QString m_value4 READ getvalue4 NOTIFY priorityChanged4)
    Q_PROPERTY(QString m_value5 READ getvalue5 NOTIFY priorityChanged5)
    Q_PROPERTY(QString m_value6 READ getvalue6 NOTIFY priorityChanged6)

public:
    infoExchanger(QString defaultvalue = "blank", QObject *parent = nullptr);

    QString getvalue0() const{ return m_value0; };
    QString getvalue1() const{ return m_value1; };
    QString getvalue2() const{ return m_value2; };
    void setvalue2(QString v2) {
        m_value2=v2;
        emit priorityChanged2();
    };
    QString getvalue3() const{ return m_value3; };
    QString getvalue4() const{ return m_value4; };
    QString getvalue5() const{ return m_value5; };
    QString getvalue6() const{ return m_value6; };

signals:
    void priorityChanged0();
    void priorityChanged1();
    void priorityChanged2();
    void priorityChanged3();
    void priorityChanged4();
    void priorityChanged5();
    void priorityChanged6();

private:
    QString m_value0;
    QString m_value1;
    QString m_value2;
    QString m_value3;
    QString m_value4;
    QString m_value5;
    QString m_value6;

};

#endif // INFOEXCHANGER_H
