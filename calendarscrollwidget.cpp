#include "calendarscrollwidget.h"

CalendarScrollWidget::CalendarScrollWidget(QWidget *parent) : QWidget{parent}{
    // Створення об'єктів даного вікна
    calendar_widget = std::unique_ptr<CalendarWidget>(new CalendarWidget(this));
    main_layout = std::unique_ptr<QVBoxLayout>(new QVBoxLayout(this));
    scroll_area = std::unique_ptr<QScrollArea>(new QScrollArea(this));

    // Ініціалізація вікна прокрутки
    scroll_area->setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOn);
    scroll_area->horizontalScrollBar()->setEnabled(true);
    scroll_area->setWidget(calendar_widget.get());
    scroll_area->setWidgetResizable(true);

    // Ініціалізація головного макету віджета
    main_layout->addWidget(scroll_area.get());
    main_layout->setContentsMargins(0,0,0,0);
    setLayout(main_layout.get());
}