import 'package:carcraft/constants/constants.dart';
// import 'package:carcraft/constants/constants.dart';
import 'package:carcraft/widgets/widgets_for_text_containter/text_body.dart';
import 'package:carcraft/widgets/widgets_for_text_containter/text_header.dart';
// import 'package:carcraft/widgets/widgets_for_text_containter/text_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class CheckVinMiddleSectionDatabase extends StatelessWidget {
  const CheckVinMiddleSectionDatabase({super.key});

  @override
  Widget build(BuildContext context) {
    // Создаем контроллер с маской для телефонного номера
    final phoneController = MaskedTextController(mask: '+7 (000) 000-00-00');
    return Expanded(
      // Используем Expanded, чтобы ListView занимал всё доступное место
      child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTextHeader(
                context,
                text: 'НАЧАТЬ СОТРУДНИЧЕСТВО',
                color: greenPhone,
              ),
              const SizedBox(height: 5),
              buildTextHeader(
                context,
                text: 'СЕЙЧАС',
              ),
              buildTextBody(context,
                  title:
                      '''Оставьте заявку и наш менеджер свяжется с вами, расскажет об условиях и ответит на вопросы '''),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Имя",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'SF-Pro-Display',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextField(
                      cursorColor: greenPhone,
                      style: const TextStyle(
                        // fontFamily: 'SF-Pro-Display',
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        // labelText: 'Имя',
                        hintText: 'Введите ваше имя',
                        contentPadding: const EdgeInsets.only(left: 20),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: greenPhone),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: greenPhone,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Телефон",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SF-Pro-Display',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextField(
                        controller: phoneController,
                        cursorColor: greenPhone,
                        style: const TextStyle(
                          // fontFamily: 'SF-Pro-Display',
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                          // labelText: 'Телефон',
                          hintText: '+7 (___) ___-__-__',
                          contentPadding: const EdgeInsets.only(left: 20),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: greenPhone),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: greenPhone,
                              width: 2.0,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
