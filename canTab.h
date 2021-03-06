#ifndef CANTAB_H
#define CANTAB_H

#include <QWidget>
#include <QTimer>

QT_USE_NAMESPACE

QT_BEGIN_NAMESPACE

namespace Ui {
class CanTab;
}

QT_END_NAMESPACE

class MainWindow;

class CanTab : public QWidget
{
    Q_OBJECT

public:
    explicit CanTab(QWidget *parent = 0);
    ~CanTab();

    void setMainWindow(MainWindow* mainWindow_);
    void savePlot();

private slots:
  void realtimeDataSlot();

  void startCAN();
  void stopCAN();
  void setMotor();
  void stopMotors();
  void resetMotor1();
  void resetMotor2();

private:
    Ui::CanTab *ui;
    MainWindow *mainWindow;
    QTimer dataTimer;

    double plotStartTime;
    double updateFrequency;
    double showPastTime;
    double windowWidth;
    double rightBlankTime;
    qint64 timeSpiNNakerStartBefore;
};

#endif // CanTab_H
