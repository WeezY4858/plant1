import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      //Эта тема занимает 20% от всего экрана
      height: size.height * 0.2,
      child: Stack(
        children: <Widget> [
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
              ),
              ),
              //А тут интересная тема, вместо колонны используем строку кароче чтобы текст писать можно было в строчку
              child: Row(
              children: <Widget> [
                Text(
                  "Futter UI project",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                    ),
                ),
                //Логотип блен
                Spacer(),
                Image.asset("assets/images/logo.png")
              ],
              ),
          ),
          
          Positioned(                                                   //Позиционирование кнопок
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(   
            alignment: Alignment.center,                                        //Контейнер для позиционирования бокса с поиском, положение бокса поиска
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 44,
            decoration: BoxDecoration(                          //Декорация бокса, цвет и закругления по углам в 30 градусов, так же тень для эффектности
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [BoxShadow(                            //Тень бокса поиска с размытием в 50ед. и констанционным цветом
                offset: Offset(0,10),
                blurRadius: 50,
                color: kPrimaryColor.withOpacity(0.23),
              ),
              ],
              ),
              child: Row(
                children:<Widget> [
                  Expanded(
                    child: 
                      TextField(
                        onChanged: (value) {},                                       //Строка положения текста на боксе поиска
                        decoration: InputDecoration(
                        hintText:"Поиск",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5)
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        //suffix нифига не работает...
                        //Именно по этому мы юзаем row
                        //suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                        ),
                      ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),

                ],
              ),                                 
          ),
          ),
        ],
        ),
    );
  }
}