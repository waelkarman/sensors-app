#ifndef INFOCOLLECTOR_H
#define INFOCOLLECTOR_H

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


class infoCollector : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString m_value0 READ getvalue0 NOTIFY priorityChanged0)
    Q_PROPERTY(QString m_value1 READ getvalue1 NOTIFY priorityChanged1)
    Q_PROPERTY(QString m_value2 READ getvalue2 NOTIFY priorityChanged2)
    Q_PROPERTY(QString m_value3 READ getvalue3 NOTIFY priorityChanged3)
    Q_PROPERTY(QString m_value4 READ getvalue4 NOTIFY priorityChanged4)
    Q_PROPERTY(QString m_value5 READ getvalue5 NOTIFY priorityChanged5)

public:
    explicit infoCollector(QString defaultval = "blank"){
        m_value0 = defaultval;
        m_value1 = defaultval;
        m_value2 = defaultval;
        m_value3 = defaultval;
        m_value4 = defaultval;
        m_value5 = defaultval;

        QThread* thread = new QThread();
        ZMQprocess* worker = new ZMQprocess();
        worker->moveToThread(thread);
        connect( thread, &QThread::started, worker, [&](){
            int n = 0;

            zmq::context_t context(1);
            zmq::socket_t subscriber (context, ZMQ_SUB);
            //  Initialize random number generator
            srandom ((unsigned) time (NULL));
            subscriber.connect("tcp://localhost:5556");
//            std::stringstream ss;
//            ss << "SENSORS";
//            std::cout << "topic:" << ss.str() << std::endl;
            subscriber.setsockopt( ZMQ_SUBSCRIBE, ss.str().c_str(), ss.str().size());

            while(1){
                std::string topic = s_recv (subscriber);
                std::string data = s_recv (subscriber);
                //std::cout << data << std::endl;

                m_value0 = data.data();

                if (topic == "BUTTON")
                    m_value0 = data.data();
                else
                    m_value0 = "BlankSpot-"+QString::number(n);

                if (topic == "PASSIVEBUZZER")
                    m_value1 =  data.data();
                else
                    m_value1 = "BlankSpot-"+QString::number(n);
                m_value2 = "BlankSpot-"+QString::number(n);
                m_value3 = "BlankSpot-"+QString::number(n);
                m_value4 = "BlankSpot-"+QString::number(n);
                m_value5 = "BlankSpot-"+QString::number(n);

                QThread::sleep(1);
                //qDebug() << "Sensors Update counter: " << n ;
                n++;

                emit priorityChanged0(m_value0);
                emit priorityChanged1(m_value1);
                emit priorityChanged2(m_value2);
                emit priorityChanged3(m_value3);
                emit priorityChanged4(m_value4);
                emit priorityChanged5(m_value5);

            }
        });
        thread->start();

    };

    QString getvalue0() const{ return m_value0; };
    QString getvalue1() const{ return m_value1; };
    QString getvalue2() const{ return m_value2; };
    QString getvalue3() const{ return m_value3; };
    QString getvalue4() const{ return m_value4; };
    QString getvalue5() const{ return m_value5; };

signals:
    void priorityChanged0(QString);
    void priorityChanged1(QString);
    void priorityChanged2(QString);
    void priorityChanged3(QString);
    void priorityChanged4(QString);
    void priorityChanged5(QString);

private:
    QString m_value0;
    QString m_value1;
    QString m_value2;
    QString m_value3;
    QString m_value4;
    QString m_value5;

};

#endif // INFOCOLLECTOR_H
