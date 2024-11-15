import 'package:carcraft/constants/constants.dart';
import 'package:carcraft/widgets/widgest_for_button/build_text_field_for_check_vin.dart';
import 'package:carcraft/widgets/widgets_for_text_containter/text_body.dart';
import 'package:carcraft/widgets/widgets_for_text_containter/text_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logger/web.dart';

class CheckVinMiddleSectionDatabase extends StatefulWidget {
  const CheckVinMiddleSectionDatabase({super.key});

  @override
  _CheckVinMiddleSectionDatabaseState createState() =>
      _CheckVinMiddleSectionDatabaseState();
}

class _CheckVinMiddleSectionDatabaseState
    extends State<CheckVinMiddleSectionDatabase> {
  // Контроллеры для каждого текстового поля
  final nameController = TextEditingController();
  final phoneController = MaskedTextController(mask: '+7 (000) 000-00-00');
  final emailController = TextEditingController();
  final commentController = TextEditingController();

  // Функция для сбора данных и очистки полей
  void submitForm() {
    String name = nameController.text;
    String phone = phoneController.text;
    String email = emailController.text;
    String comment = commentController.text;
    var logger = Logger();
    // логируем введеные данные пользователем
    logger.f('Имя: $name');
    logger.i('Телефон: $phone');
    logger.i('E-mail: $email');
    logger.i('Комментарий: $comment');

    // print('Имя: $name');
    // print('Телефон: $phone');
    // print('E-mail: $email');
    // print('Комментарий: $comment');

    // Очистка всех полей
    nameController.clear();
    phoneController.clear();
    emailController.clear();
    commentController.clear();

    // Уведомление
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Заявка отправлена!')),
    );
  }

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
                text: 'НАЧАТЬ СОТРУДНИЧЕСТВО',
                color: greenPhone,
              ),
              buildTextHeader(
                context,
                text: 'СЕЙЧАС',
              ),
              buildTextBody(context,
                  title:
                      '''Оставьте заявку и наш менеджер свяжется с вами, расскажет об условиях и ответит на вопросы '''),
              buildTextFieldForCheckVin(
                labelText: 'Имя',
                controller: nameController,
                hintText: 'Введите ваше имя',
                cursorColor: greenPhone,
              ),
              buildTextFieldForCheckVin(
                labelText: 'Телефон',
                controller: phoneController,
                hintText: '+7 (___) ___-__-__',
                cursorColor: greenPhone,
                keyboardType: TextInputType.phone,
              ),
              buildTextFieldForCheckVin(
                labelText: 'E-mail',
                controller: emailController,
                hintText: 'Введите Вашу почту',
                cursorColor: greenPhone,
                keyboardType: TextInputType.emailAddress,
              ),
              buildTextFieldForCheckVin(
                numberForTopPadding: 20,
                labelText: 'Комментарий',
                controller: commentController,
                hintText: 'Введите Ваш комментарий',
                cursorColor: greenPhone,
                maxLines: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: submitForm, // Вызов функции при нажатии
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: greenPhone,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Center(
                            child: Text(
                              'ОТПРАВИТЬ ЗАЯВКУ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                            height: 35,
                            child: SvgPicture.asset(
                              'assets/icons/arrow_on_the_right.svg',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Text(
                'Отправляя заяку, Вы соглашаетесь  с политикой обработки персональных данных',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SF-Pro-Display',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
