#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QQmlFileSelector>
#include <QQuickView>
#include <QDebug>
#include <QQmlContext>
#include "networkmessageprocessor.h"
#include "buttonmessageprocessor.h"
#include "buzzermessageprocessor.h"

int main(int argc, char *argv[])
{


    networkMessageProcessor nm;
    buttonMessageProcessor btm;
    buzzerMessageProcessor bzm;


    QCoreApplication::setApplicationName("Sensors & Informations");
    QGuiApplication app(argc, argv);

    QQuickView view;
    view.connect(view.engine(), &QQmlEngine::quit, &app, &QCoreApplication::quit);
    view.rootContext()->setContextProperty("nm", &nm);
    view.rootContext()->setContextProperty("bzm", &bzm);
    view.rootContext()->setContextProperty("btm", &btm);
    view.setSource(QUrl("qrc:/main.qml"));

    if (view.status() == QQuickView::Error)
        return -1;

    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.show();

    return app.exec();
}
