import 'package:mobile/constants/constants.dart';
// import 'package:mobile/widgets/widgets_for_text_containter/build_product_containter.dart';
import 'package:mobile/widgets/widgets_for_text_containter/team_product_container.dart';
// import 'package:mobile/widgets/widgets_for_text_containter/text_body.dart';
import 'package:mobile/widgets/widgets_for_text_containter/text_header.dart';
import 'package:flutter/material.dart';

class TeamMiddleSectionDatabase extends StatelessWidget {
  const TeamMiddleSectionDatabase({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //* Используем Expanded, чтобы ListView занимал всё доступное место
      child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTextHeader(
                context,
                text: 'НАША КОМАНДА ИЗ АВТОБИЗНЕСА',
                color: greenPhone,
              ),
              const SizedBox(height: 5),
              buildTextHeader(
                context,
                text: 'И БАНКОВСКОГО СЕКТОРА',
                color: black,
              ),
              teamProductContainer(
                context,
                icon: 'assets/icons/photo/123.png',
                title: 'Борис Дмитриев',
                position: 'Председатель совета директоров',
                subtitle: 'Рольф, Независимость, Пежо Ситроен Рус, Caroperator',
              ),
              teamProductContainer(
                context,
                icon: 'assets/icons/photo/555.png',
                title: 'Даниэль Зеленский',
                position: 'CEO',
                subtitle:
                    'Visa, Experian, Газпромбанк, Объедененное Кредитное Бюро',
              ),
              teamProductContainer(
                context,
                icon: 'assets/icons/photo/444.png',
                title: 'Борис Беленький',
                position: 'CVO',
                subtitle: 'Рольф, Inchcape, Пежо Ситроен Рус, Caroperator',
              ),
              teamProductContainer(
                context,
                icon: 'assets/icons/photo/666.png',
                title: 'Валентина Вылегжанина',
                position: 'CMO',
                subtitle:
                    'Авторитейл М, Авилон, АвтоСпецЦентр, Азимут СП, Бизнес-Кар',
              ),
              teamProductContainer(
                context,
                icon: 'assets/icons/photo/111.png',
                title: 'Алена Коновалова',
                position:
                    'Директор департамента по работе с финансовыми организациями',
                subtitle: 'Райффайзенбанк, ОКБ, Баланс Платформа',
              ),
              teamProductContainer(
                context,
                icon: 'assets/icons/photo/333.png',
                title: 'Ольга Мамилова',
                position: 'Директор по развитию продуктов',
                subtitle:
                    'Fresh, Первый Бит, Лаборатория Гемотест, МегаФон, Связной',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
