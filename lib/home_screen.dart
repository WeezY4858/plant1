import 'package:flutter/material.dart';
import 'package:flutter_application_1/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'my_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar  buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset("assets/icons/menu.svg"),
       onPressed: (){},),
    );
  }
}

