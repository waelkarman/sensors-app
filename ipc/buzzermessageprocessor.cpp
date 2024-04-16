#include "buzzermessageprocessor.h"
#include <zhelpers.h>
#include <zmq.hpp>
#include <zmqprocess.h>

buzzerMessageProcessor::buzzerMessageProcessor():buzzerstat("Buzzer OFF"){
    this->start();
}

void buzzerMessageProcessor::run(){

    zmq::context_t context(1);
    zmq::socket_t publisher(context, ZMQ_PUB);
    publisher.bind("tcp://*:5560");

    stringstream ss;
    ss << "PASSIVEBUZZER";
    char *topic;
    topic = (char *)malloc((strlen(ss.str().c_str())+1)*sizeof(char));
    strncpy(topic, ss.str().c_str(),strlen(ss.str().c_str())+1);

    //FIXME remove the pooling and send message just on toggle
    while(1){
        s_sendmore (publisher, topic);
        s_send (publisher, &buzzerstat.toStdString()[0]);
        sleep(std::chrono::milliseconds(50));
    }
}

void buzzerMessageProcessor::setBuzzerstat(QString stat){
    buzzerstat=stat;
    emit buzzerstatChanged();
    this->start();
}


QString buzzerMessageProcessor::getBuzzerstat(){
    return buzzerstat;
}
