#include "infoexchanger.h"


infoExchanger::infoExchanger(QString defaultval,QObject *parent){
    m_value0 = "Network service unreachable";
    m_value1 = defaultval;
    m_value2 = defaultval;
    m_value3 = defaultval;
    m_value4 = defaultval;
    m_value5 = defaultval;
    m_value6 = defaultval;

    QThread* thread4incoming = new QThread();
    ZMQprocess* incomingprocess = new ZMQprocess();
    incomingprocess->moveToThread(thread4incoming);
    connect( thread4incoming, &QThread::started, incomingprocess, [&](){

        zmq::context_t context(1);
        zmq::socket_t subscriber (context, ZMQ_SUB);
        srandom ((unsigned) time (NULL));
        subscriber.connect("tcp://localhost:5554");
        subscriber.connect("tcp://localhost:5557");
        std::stringstream ss;
        ss << "BUTTON";
        subscriber.setsockopt( ZMQ_SUBSCRIBE, ss.str().c_str(), ss.str().size());
        std::stringstream sss;
        ss << "NETWORK";
        subscriber.setsockopt( ZMQ_SUBSCRIBE, sss.str().c_str(), sss.str().size());


        while(1){
            std::string topic = s_recv (subscriber);
            std::string data = s_recv (subscriber);

            if (topic == "NETWORK"){
                m_value0 =  data.data();
                emit priorityChanged0();
            }

            if (topic == "BUTTON"){
                m_value1 = data.data();
                emit priorityChanged1();
            }

        }
    });

    QThread* thread4outgoing = new QThread();
    ZMQprocess* outgoingprocess = new ZMQprocess();
    outgoingprocess->moveToThread(thread4outgoing);
    connect( thread4outgoing, &QThread::started, outgoingprocess, [&](){

        zmq::context_t context(1);
        zmq::socket_t publisher(context, ZMQ_PUB);
        srandom ((unsigned) time (NULL));
        publisher.bind("tcp://*:5560");

        while(1){
            std::this_thread::sleep_for(std::chrono::seconds(1));
            s_sendmore (publisher, "PASSIVEBUZZER");
            s_send (publisher, &m_value2.toStdString()[0]);
        }
    });

    thread4incoming->start();
    thread4outgoing->start();
};
