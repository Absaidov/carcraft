import 'package:mobile/constants/constants.dart';
import 'package:mobile/widgets/widgets_for_text_containter/build_product_containter.dart';
import 'package:mobile/widgets/widgets_for_text_containter/text_body.dart';
import 'package:mobile/widgets/widgets_for_text_containter/text_header.dart';
import 'package:flutter/material.dart';

class ProductsMiddleSectionDatabase extends StatelessWidget {
  const ProductsMiddleSectionDatabase({super.key});

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
                text: 'НАШИ',
                color: greenPhone,
              ),
              const SizedBox(height: 5),
              buildTextHeader(
                context,
                text: 'ПРОДУКТЫ',
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
              buildProductContainer(
                context,
                icon: 'assets/icons/gif/momentum_pay.gif',
                title: 'MOMENTUM PAY',
                subtitle: 'Платформа перевода на карты\n'
                    'физических лиц за автомобили с\n'
                    'возможностью управления overdraft',
              ),
              buildProductContainer(
                context,
                icon: 'assets/icons/gif/vin_by_vin.gif',
                title: 'VIN BY VIN FINANCE \\ MULTIFACTORING',
                subtitle: 'Платформа VIN BY VIN финансирования\n'
                    'автобизнеса',
              ),
              buildProductContainer(
                context,
                icon: 'assets/icons/gif/notarial_control.gif',
                title: 'NOTARIAL CONTROL',
                subtitle: 'Платформа управления залогами',
              ),
              buildProductContainer(
                context,
                icon: 'assets/icons/gif/monitoring.gif',
                title: 'MONITORING',
                subtitle: 'Платформа онлайн-мониторинга\n'
                    'кредитного порфтеля и продаж\n'
                    'автомобилей',
              ),
              buildProductContainer(
                context,
                icon: 'assets/icons/gif/smart_control.gif',
                title: 'SMART CONTROL',
                subtitle: 'Платформа онлайн-мониторинга\n'
                    'залового имущества\n',
              ),
              buildProductContainer(
                context,
                icon: 'assets/icons/gif/remoney.gif',
                title: 'REMONEY',
                subtitle: 'Инвестиционная платформа для частного\n'
                    'и корпоративного финансирования \n'
                    'автобизнеса',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
