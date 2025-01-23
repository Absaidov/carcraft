import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

// Виджет для отображения одного элемента слайдера (новость + изображение)
class NewsItem extends StatelessWidget {
  final String imagePath;
  final String newsText;
  final String title;
  final String url;

  const NewsItem({
    super.key,
    required this.imagePath,
    required this.newsText,
    required this.title,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    final double sliderHeight =
        MediaQuery.of(context).size.height * 0.45; //* 45% от высоты экрана
    final double imageHeight = sliderHeight * 0.5; //* 50% от высоты слайдера
    final double buttonHeight = sliderHeight * 0.15; //* 20% от высоты слайдера
    return Transform.translate(
      offset: const Offset(0, 0), //* Смещение для тени
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(0, 5), //* Тень снизу
              // spreadRadius: 0,
            ),
          ],
        ),
        // clipBehavior: Clip.none, //* Отключаем обрезание содержимого
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                  10), //* Закругленные углы для изображения
              child: Image.asset(
                imagePath,
                width: double.infinity, //* Ширина на весь контейнер
                height:
                    imageHeight, //* Изображение занимает 50% от размера слайдера
                fit: BoxFit.cover, //* Изображение заполняет контейнер
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons
                      .error); //* Иконка ошибки, если изображение не загрузится
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0), //* Увеличить отступы
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0), //* Увеличить отступы
              child: Text(
                newsText.replaceAll('\n', ' '),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
                // softWrap: true,
                maxLines: 15,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            //* Spacer занимает всё доступное пространство
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: GestureDetector(
                onTap: () => _launchUrl(url),
                child: Container(
                  height: buttonHeight,
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
                            'ЧИТАТЬ СТАТЬЮ',
                            style: TextStyle(
                              fontSize: 20,
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
                ), // Укажите нужный URL),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrl(String url) async {
  final Uri uri = Uri.parse(url); // Преобразуем строку в Uri
  if (!await launchUrl(
    uri,
    mode: LaunchMode.externalApplication, // Открыть в браузере
  )) {
    throw Exception('Не удалось открыть ссылку: $url');
  }
}
