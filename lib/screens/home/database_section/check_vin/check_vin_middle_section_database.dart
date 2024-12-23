import 'package:carcraft/constants/constants.dart';
import 'package:carcraft/db_service.dart';
import 'package:carcraft/provider/form_data_provider.dart';
import 'package:carcraft/widgets/widgest_for_button/build_text_field_for_check_vin.dart';
import 'package:carcraft/widgets/widgets_for_text_containter/text_body.dart';
import 'package:carcraft/widgets/widgets_for_text_containter/text_header.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logger/web.dart';
import 'package:provider/provider.dart';

class CheckVinMiddleSectionDatabase extends StatelessWidget {
  CheckVinMiddleSectionDatabase({super.key});

  // Глобальный ключ для формы
  final _formKey = GlobalKey<FormState>();
  final DatabaseService dbService = DatabaseService();

  // Функция для сбора данных и очистки полей
  Future<void> submitForm(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      var formDataProvider = context.read<FormDataProvider>();

      //* Подключение к базе данных яндекса
      await dbService.connect();
      var logger = Logger();
      // logger.f('Имя: ${formDataProvider.name}');
      // logger.i('Телефон: ${formDataProvider.phone}');
      // logger.i('E-mail: ${formDataProvider.email}');
      // logger.i('Комментарий: ${formDataProvider.comment}');
      try {
        await dbService.insertFormData(
          formDataProvider.name,
          formDataProvider.phone,
          formDataProvider.email,
          formDataProvider.comment,
        );
        // Уведомление
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Заявка отправлена!')),
        );
        //Очищаем поле после отправки данных
        formDataProvider.clearFields();
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Ошибка: $e')),
        );
        logger.i(e);
      } finally {
        await dbService.disconnect();
      }
    } else {
      // Если форма не валидна, показываем сообщение
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Заполните все обязательные поля!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Form(
        key: _formKey, // Привязываем ключ формы
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
                  controller: context.read<FormDataProvider>().nameController,
                  hintText: 'Введите ваше имя',
                  cursorColor: greenPhone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Введите имя';
                    }
                    return null;
                  },
                ),
                buildTextFieldForCheckVin(
                  labelText: 'Телефон',
                  controller: context.read<FormDataProvider>().phoneController,
                  hintText: '+7 (___) ___-__-__',
                  cursorColor: greenPhone,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Введите номер телефона';
                    }
                    return null;
                  },
                ),
                buildTextFieldForCheckVin(
                  labelText: 'E-mail',
                  controller: context.read<FormDataProvider>().emailController,
                  hintText: 'Введите Вашу почту',
                  cursorColor: greenPhone,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Введите адрес электронной почты';
                    }
                    // Простая проверка валидности email
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Введите корректный email';
                    }
                    return null;
                  },
                ),
                buildTextFieldForCheckVin(
                  numberForTopPadding: 20,
                  labelText: 'Комментарий',
                  controller:
                      context.read<FormDataProvider>().commentController,
                  hintText: 'Введите Ваш комментарий',
                  cursorColor: greenPhone,
                  maxLines: 8,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Введите комментарий';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: GestureDetector(
                    onTap: () => submitForm(
                        context), // Передаем функцию в виде замыкания
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
                  'Отправляя заявку, Вы соглашаетесь с политикой обработки персональных данных',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SF-Pro-Display',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
