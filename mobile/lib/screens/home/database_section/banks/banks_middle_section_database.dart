import 'package:mobile/constants/constants.dart';
import 'package:mobile/widgets/widgets_for_text_containter/text_body.dart';
import 'package:mobile/widgets/widgets_for_text_containter/text_header.dart';
import 'package:mobile/widgets/widgets_for_text_containter/text_container.dart';
import 'package:flutter/material.dart';

class BanksMiddleSectionDatabase extends StatelessWidget {
  const BanksMiddleSectionDatabase({super.key});

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
                text: 'СОТРУДНИЧЕСТВА ДЛЯ БАНКОВ',
              ),
              buildTextBody(
                context,
                title:
                    'CARCRAFT активно развивает партнерские отношения c банками,'
                    'заинтересованными в сотрудничестве по эквайрингу А2С и СБП.'
                    'Это позволяет банкам расширить свой клиентский портфель'
                    'и предложить свои услуги автодилерам и автосалонам, которые '
                    'используют платформу CARCRAFT.',
              ),
              buildTextContainer(
                context,
                title: 'Расширение клиентской базы',
                subtitle:
                    'Сотрудничество с другими банками может помочь увеличить число клиентов',
              ),
              buildTextContainer(
                context,
                title: 'Совместная инновация',
                subtitle:
                    'Объединение знаний и опыта для разработки новых инновационных продуктов и услуг',
              ),
              buildTextContainer(
                context,
                title: 'Увеличение продуктового портфеля',
                subtitle:
                    'позволяет предложить клиентам больше разнообразных продуктов и услуг ',
              ),
              buildTextContainer(
                context,
                title: 'Экономия затрат',
                subtitle:
                    'Снижение издержек, связанных с разработкой и поддержкой инфраструктуры и технологий',
              ),
              buildTextContainer(
                context,
                title: 'Снижение рисков',
                subtitle:
                    'Помощь в снижении определенных рисков, такие как кредитный риск или операционный риск',
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
