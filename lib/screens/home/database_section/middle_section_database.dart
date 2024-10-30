import 'package:carcraft/constants/constants.dart';
import 'package:carcraft/widgets/text_body.dart';
import 'package:carcraft/widgets/text_header.dart';
import 'package:carcraft/widgets/text_container.dart';
import 'package:flutter/material.dart';

class MiddleSectionDatabase extends StatelessWidget {
  const MiddleSectionDatabase({super.key});

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
                'ПРЕИМУЩЕСТВА',
                color: greenPhone,
              ),
              const SizedBox(height: 5),
              buildTextHeader(
                context,
                'СОТРУДНИЧЕСТВА ДЛЯ АВТОСАЛОНОВ',
              ),
              buildTextBody(
                context,
                'CARCRAFT предлагает автодиллерам и автосалонам'
                " удобную платформу для получения финансирования"
                " без лишних сложностей. Они могут легко заполнить заявку"
                " на финансирование и получить ответ от нескольких банков,"
                " что позволяет выбрать наиболее выгодное предложение.",
              ),
              buildTextContainer(
                context,
                'Скорость подключения',
                'Скорость подключения к кредитной линии всего 2 дня',
              ),
              buildTextContainer(
                context,
                'Скорость подключения',
                'Скорость подключения к кредитной линии всего 2 дня',
              ),
              buildTextContainer(
                context,
                'Скорость подключения',
                'Скорость подключения к кредитной линии всего 2 дня',
              ),
              buildTextContainer(
                context,
                'Скорость подключения',
                'Скорость подключения к кредитной линии всего 2 дня',
              ),
              buildTextContainer(
                context,
                'Скорость подключения',
                'Скорость подключения к кредитной линии всего 2 дня',
              ),
              buildTextContainer(
                context,
                'Скорость подключения',
                'Скорость подключения к кредитной линии всего 2 дня',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
