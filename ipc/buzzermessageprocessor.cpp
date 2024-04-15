#include "buzzermessageprocessor.h"
#include <zhelpers.h>
#include <zmq.hpp>
#include <zmqprocess.h>

buzzerMessageProcessor::buzzerMessageProcessor() {
    this->start();
}

void buzzerMessageProcessor::run(){

    zmq::context_t context(1);
    zmq::socket_t publisher(context, ZMQ_PUB);
    srandom ((unsigned) time (NULL));
    publisher.bind("tcp://*:5560");

    while(1){
        s_sendmore (publisher, "PASSIVEBUZZER");
        s_send (publisher, &buzzerstat.toStdString()[0]);
    }
};


QString buzzerMessageProcessor::getBuzzerstat(){
    return buzzerstat;
};
