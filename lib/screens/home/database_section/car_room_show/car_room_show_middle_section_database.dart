import 'package:carcraft/constants/constants.dart';
import 'package:carcraft/widgets/widgets_for_text_containter/text_body.dart';
import 'package:carcraft/widgets/widgets_for_text_containter/text_header.dart';
import 'package:carcraft/widgets/widgets_for_text_containter/text_container.dart';
import 'package:flutter/material.dart';

class CarRoomShowMiddleSectionDatabase extends StatelessWidget {
  const CarRoomShowMiddleSectionDatabase({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                text: 'СОТРУДНИЧЕСТВА ДЛЯ АВТОСАЛОНОВ',
              ),
              buildTextBody(
                context,
                title: 'CARCRAFT предлагает автодиллерам и автосалонам'
                    " удобную платформу для получения финансирования"
                    " без лишних сложностей. Они могут легко заполнить заявку"
                    " на финансирование и получить ответ от нескольких банков,"
                    " что позволяет выбрать наиболее выгодное предложение.",
              ),
              buildTextContainer(
                context,
                title: 'Скорость подключения',
                subtitle: 'Скорость подключения к кредитной линии всего 2 дня',
              ),
              buildTextContainer(
                context,
                title: 'Онлайн-калькулятор',
                subtitle:
                    'Онлайн-калькулятор расчета стоимости автомобиля с пробегом',
              ),
              buildTextContainer(
                context,
                title: 'Документы',
                subtitle:
                    'Минимальный пакет документов для одобрения кредитного лимита',
              ),
              buildTextContainer(
                context,
                title: 'Юридическая проверка',
                subtitle:
                    'Комплексная юридическая проверка автомобиля на предмет обременений',
              ),
              buildTextContainer(
                context,
                title: 'Требования к автомобилю',
                subtitle: 'Минимум требований к финансируемому автомобилю',
              ),
              buildTextContainer(
                context,
                title: 'Улучшения клиентского опыта',
                subtitle:
                    'Предложения своим клиентам более широкого спектра продуктов и услуг',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
