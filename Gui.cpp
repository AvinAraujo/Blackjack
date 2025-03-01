#include <QApplication>
#include <QWidget>
#include <QPushButton>

class SimpleGui : public QWidget {
public:
    SimpleGui(QWidget *parent = nullptr);
};

SimpleGui::SimpleGui(QWidget *parent) : QWidget(parent) {
    QPushButton *button = new QPushButton("Click Me", this);
    button->setGeometry(50, 50, 100, 30);
}