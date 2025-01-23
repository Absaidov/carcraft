import 'package:carousel_slider/carousel_slider.dart';
import 'package:mobile/widgets/widgets_for_slider/news_item.dart';
import 'package:flutter/material.dart';

//* Виджет для отображения слайдера с новостями
class NewsSlider extends StatelessWidget {
  final List<String> newsItems;
  final List<String> imagePaths;
  final List<String> titles;
  final List<String> urls;

  const NewsSlider({
    super.key,
    required this.titles,
    required this.newsItems,
    required this.imagePaths,
    required this.urls,
  });

  @override
  Widget build(BuildContext context) {
    final double sliderHeight =
        MediaQuery.of(context).size.height * 0.70; //* 40% от высоты экрана

    //* Проверяем, что все списки имеют одинаковую длину
    if (newsItems.length != imagePaths.length ||
        newsItems.length != titles.length) {
      return const Center(
        child: Text(
          'Ошибка: списки newsItems, imagePaths и titles должны иметь одинаковую длину.',
          style: TextStyle(color: Colors.red),
        ),
      );
    }

    return CarouselSlider(
      options: CarouselOptions(
        height: sliderHeight, //* Высота слайдера относительно размера экрана
        autoPlay: true, //* автопрокрутка слайдера
        // enlargeCenterPage: true, //* Увеличение центрального слайда слайда
        autoPlayInterval:
            const Duration(seconds: 30), //* Интервал между слайдами (30 секунд)
        viewportFraction: 1.0, //* Выбираем размер слайда
      ),
      items: List.generate(newsItems.length, (index) {
        //* Проверяем, что индекс находится в пределах диапазона
        if (index >= imagePaths.length || index >= titles.length) {
          return Center(
            child: Text(
              'Ошибка: индекс $index выходит за пределы диапазона.',
              style: const TextStyle(color: Colors.red),
            ),
          );
        }

        return Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 10), //* Отступы сверху и снизу
          child: NewsItem(
            imagePath: imagePaths[index], //* Передаем путь к изображению
            newsText: newsItems[index],
            title: titles[index],
            url: urls[index],
          ),
        );
      }),
    );
  }
}
