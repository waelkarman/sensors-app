#include "networkmessageprocessor.h"
#include <zhelpers.h>
#include <zmq.hpp>
#include <zmqprocess.h>

networkMessageProcessor::networkMessageProcessor() {
    this->start();
}

void networkMessageProcessor::run(){

    zmq::context_t context(1);
    zmq::socket_t subscriber (context, ZMQ_SUB);
    subscriber.connect("tcp://localhost:5557");

    const string topic = "NETWORK";
    subscriber.setsockopt( ZMQ_SUBSCRIBE, topic.c_str(), topic.size());


    while(1){
        std::string topic = s_recv (subscriber);
        std::string data = s_recv (subscriber);
        networkstat =  data.data();
        emit networkstatChanged();
    }
};


QString networkMessageProcessor::getNetworkstat(){
    return networkstat;
};
