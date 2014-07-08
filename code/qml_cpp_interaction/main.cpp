#include <QtGui/QGuiApplication>
#include "qtquick2applicationviewer.h"
#include <QObject>
#include <iostream>

#include <QQuickItem>
#include <QQuickView>


class controller : public QObject
{
    Q_OBJECT

public slots:
    void cppSlot(double nb){std::cout << "from cpp : " << nb;}

};

//needed for inline class definitions...
//otherwise, strange vtable errors pop up...
#include "main.moc"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QtQuick2ApplicationViewer viewer;
    viewer.setMainQmlFile(QStringLiteral("qml/qml_cpp_interaction/main.qml"));
    viewer.showExpanded();

    return app.exec();
}
