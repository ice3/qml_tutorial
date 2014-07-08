#include <QtGui/QGuiApplication>
#include "qtquick2applicationviewer.h"
#include <QObject>
#include <QString>
#include <iostream>
#include <QQmlContext>


#include <QQuickItem>
#include <QQuickView>


class controller : public QObject
{
    Q_OBJECT

public slots:
    void cppSlot(double nb){emit answerBack("pong !");
    }

signals:
    void answerBack(QString ans);
};

//needed for inline class definitions...
//otherwise, strange vtable errors pop up...
#include "main.moc"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    // we declare the controller
    controller *test = new controller;

    QtQuick2ApplicationViewer viewer;
    // !! we need to set the context property to get the signals and slots !
    viewer.rootContext()->setContextProperty("controller", test);
    viewer.setMainQmlFile(QStringLiteral("qml/qml_cpp_interaction/main.qml"));

    // we find the root object of the QML document
    QObject *root = viewer.rootObject();

    // standart signal slot connection
    QObject::connect(root,
                     SIGNAL(mouseClicked(double)),
                     test,
                     SLOT(cppSlot(double)));

    viewer.showExpanded();


    return app.exec();
}
