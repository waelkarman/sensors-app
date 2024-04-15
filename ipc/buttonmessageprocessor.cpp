#include "buttonmessageprocessor.h"
#include <zhelpers.h>
#include <zmq.hpp>
#include <zmqprocess.h>

buttonMessageProcessor::buttonMessageProcessor() {
    this->start();
}

void buttonMessageProcessor::run(){

    zmq::context_t context(1);
    zmq::socket_t subscriber (context, ZMQ_SUB);
    subscriber.connect("tcp://localhost:5554");

    const string topic = "Button";
    subscriber.setsockopt( ZMQ_SUBSCRIBE, topic.c_str(), topic.size());


    while(1){
        std::string topic = s_recv (subscriber);
        std::string data = s_recv (subscriber);
        buttonstat =  data.data();
        emit buttonstatChanged();
    }
};


QString buttonMessageProcessor::getButtonstat(){
    return buttonstat;
};
