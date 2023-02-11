import 'package:flutter/material.dart';

import 'constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key, required this.title, required this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding), // Симметрия текста
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
          const Spacer(),
          ElevatedButton(
            style : ElevatedButton.styleFrom(                                       //Новый образец кнопки
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
                ),
              primary: Colors.green[600],
              
            ),
            onPressed: () {press;}, 
            child: 
            const Text(
              "Узнать больше",
              style: TextStyle(color: Colors.white),
              ),)
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key, required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,                         //размер текста рекомендаций
      child: Stack(                       //Создание нового пустого стэка
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),        //Поднятие подчёркивания рекомендаций только слева вверх на 4 пикселя
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),     //Стиль текста и размер
              ),
          ),
            Positioned(                       //Позиция контейнера ниже строки поиска
            bottom: 0,
            left: 0,
            right: 0,
              child: Container(
                margin: const EdgeInsets.only(right: kDefaultPadding / 4),       //Поднятие подчёркивания рекомендаций только справа вверх на 4 пикселя
                height: 7, 
                color: kPrimaryColor.withOpacity(0.2),
                ),
            )
        ],
        ),
      );
  }
}

