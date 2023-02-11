import 'package:flutter/material.dart';
import 'package:flutter_application_1/recomend_plants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';
import 'featured_plants.dart';
import 'header_with_seachbox.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    //Это будет образцом ширины и высоты экрана
    Size size = MediaQuery.of(context).size;
    //А это скролит само окно для просмотра, Флаттер блен это ж 1 сплошной виджет
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Рекомендации", press: () {}), //А вот эта тема будет занимать 40% от рабочего экрана
          RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}

