#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QQmlFileSelector>
#include <QQuickView>
#include <QDebug>
#include <QQmlContext>
#include "networkmessageprocessor.h"

int main(int argc, char *argv[])
{


    networkMessageProcessor nm;







    QCoreApplication::setApplicationName("Sensors & Informations");
    QGuiApplication app(argc, argv);

    //qmlRegisterType<infoExchanger>("infoExchanger", 1, 0, "Infodispencer");
    QQuickView view;
    view.connect(view.engine(), &QQmlEngine::quit, &app, &QCoreApplication::quit);
    view.rootContext()->setContextProperty("nm", &nm);
    view.setSource(QUrl("qrc:/main.qml"));

    if (view.status() == QQuickView::Error)
        return -1;

    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.show();

    return app.exec();
}
