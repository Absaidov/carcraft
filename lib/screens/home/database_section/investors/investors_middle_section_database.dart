import 'package:carcraft/constants/constants.dart';
import 'package:carcraft/widgets/widgets_for_text_containter/text_body.dart';
import 'package:carcraft/widgets/widgets_for_text_containter/text_header.dart';
import 'package:carcraft/widgets/widgets_for_text_containter/text_container.dart';
import 'package:flutter/material.dart';

class InvestorsMiddleSectionDatabase extends StatelessWidget {
  const InvestorsMiddleSectionDatabase({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // Используем Expanded, чтобы ListView занимал всё доступное место
      child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTextHeader(
                context,
                text: 'ПРЕИМУЩЕСТВА',
                color: greenPhone,
              ),
              const SizedBox(height: 5),
              buildTextHeader(
                context,
                text: 'СОТРУДНИЧЕСТВА ДЛЯ ИНВЕСТОРОВ',
              ),
              buildTextBody(context,
                  title:
                      'CARCRAFT предлагает автодилерам и автосалонам удобную платформу,'
                      'для получаения финансирования без лишних сложностей.'
                      'Они могут легко заполнить заявку на финансирование и получить ответ от'
                      'нескольких банков, что позволяет выбрать наиболее выгодное предложение.'),
              buildTextContainer(
                context,
                title: 'Инвестиции при сопровождении оператора риска',
                subtitle: '''Отраслевой контроль и рейтингование заемщика.
Экспертиза в бизнесе заемщика''',
              ),
              buildTextContainer(
                context,
                title: 'Обеспечение инвестиций',
                subtitle:
                    '''Обеспечение инвестиций залогами. Ежегодный мониторинг предмета залога.
Фото и видео контроль наличия залога.
Прямая интеграция с Федеральной нотариальной палатой (ФНП)''',
              ),
              buildTextContainer(
                context,
                title: 'Гарантия сохранности капитала',
                subtitle:
                    '''Осуществление юридического сопровождения по взысканию проблемной задолженности'
Комплекс продуктов гарантирующий полный или частичный выкуп займа.''',
              ),
              buildTextContainer(
                context,
                title: 'Биржа позиций',
                subtitle: '''Возможность досрочного возврата
Возврат инвестиций через обратный выкуп инвестпортфеля
Площадка для выкупа и/или прожади инвестиционных портфелей
Trade-in позиций''',
              ),
              buildTextContainer(
                context,
                title: 'Личный кабинет',
                subtitle:
                    '''Управление инвестиционным портфелем онлайн из любой точки мира
Советник по инвестициям.
Выбор стратегии инвестирования Онлайн-дашборды с прозрачными механизмами контроля инвестирования''',
              ),
              buildTextContainer(
                context,
                title: 'Любые типы инвесторов',
                subtitle: '''Юридические лица
Физические лица (квалифированные и неквалифицированные инвесторы)
Индивидуальные предприниматели
Институциональные инвесторы''',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
