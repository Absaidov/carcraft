import 'package:mobile/screens/home/database_section/check_vin/check_vin_middle_section_database.dart';
import 'package:mobile/constants/constants.dart';
import 'package:mobile/db_service.dart';
import 'package:mobile/provider/form_data_provider.dart';
import 'package:mobile/servises/api_service.dart';
import 'package:mobile/widgets/widgest_for_button/build_text_field_for_check_vin.dart';
import 'package:mobile/widgets/widgets_for_text_containter/text_body.dart';
import 'package:mobile/widgets/widgets_for_text_containter/text_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logger/web.dart';
import 'package:provider/provider.dart';

import 'validators.dart';

class CheckVinMiddleSectionSpringboot extends StatelessWidget {
  CheckVinMiddleSectionSpringboot({super.key});
  //* Глобальный ключ для формы
  final _formKey = GlobalKey<FormState>();

  Future<void> submitForm(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      var formDataProvider = context.read<FormDataProvider>();

      //* Создаем экземпляр ApiService
      final apiService = ApiService();

      try {
        //* Отправляем данные на сервер
        await apiService.sendFormData(
          name: formDataProvider.name,
          phone: formDataProvider.phone,
          email: formDataProvider.email,
          comment: formDataProvider.comment,
        );

        //* Уведомляем пользователя об успешной отправке
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Заявка отправлена!')),
          );
        }

        //* Очищаем поля после отправки данных
        formDataProvider.clearFields();
      } catch (e) {
        //* Обрабатываем ошибку
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Ошибка: $e')),
          );
        }
      }
    } else {
      //* Если не заполнены все поля, показываем сообщение
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Заполните все обязательные поля!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Form(
        key: _formKey, //* Привязываем ключ формы
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
                  validator: validateName,
                ),
                buildTextFieldForCheckVin(
                  labelText: 'Телефон',
                  controller: context.read<FormDataProvider>().phoneController,
                  hintText: '+7 (___) ___-__-__',
                  cursorColor: greenPhone,
                  keyboardType: TextInputType.phone,
                  validator: validatePhone,
                ),
                buildTextFieldForCheckVin(
                  labelText: 'E-mail',
                  controller: context.read<FormDataProvider>().emailController,
                  hintText: 'Введите Вашу почту',
                  cursorColor: greenPhone,
                  keyboardType: TextInputType.emailAddress,
                  validator: validateEmailField,
                ),
                buildTextFieldForCheckVin(
                  numberForTopPadding: 20,
                  labelText: 'Комментарий',
                  controller:
                      context.read<FormDataProvider>().commentController,
                  hintText: 'Введите Ваш комментарий',
                  cursorColor: greenPhone,
                  maxLines: 8,
                  validator: validateComment,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: GestureDetector(
                    onTap: () => submitForm(
                        context), //* Передаем функцию в виде замыкания
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
