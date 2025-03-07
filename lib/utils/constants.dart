import 'package:flutter/material.dart';

///Custom sizes
double sizeboxsize = 15;
double buttonwidth = 72;
double buttonheight = 72;
double buttonborder = 36;


///Custom colors
Color primarybackgroundcolor1 = const Color(0xff000000);
Color displaytextcolor1 = const Color(0xffffffff);
Color primarybuttoncolor1 = const Color(0xff27292e);
Color secondarybuttoncolor1 = const Color(0xff323438);
Color grad1buttoncolor1 = const Color(0xfff01c84);
Color grad2buttoncolor1 = const Color(0xfffc4f3d);
Color buttontextcolor1 = const Color(0xffffffff);

Color primarybackgroundcolor2 = const Color(0xffffffff);
Color displaytextcolor2 = const Color(0xff111111);
Color primarybuttoncolor2 = const Color(0xfff5f5f5);
Color secondarybuttoncolor2 = const Color(0xffe9e9e9);
Color grad1buttoncolor2 = const Color(0xfff01c84);
Color grad2buttoncolor2 = const Color(0xfffc4f3d);
Color buttontextcolor2 = const Color(0xff000000);


///Custom height for each devices
mqHeight(double height, BuildContext context) {
  return height * ((MediaQuery.of(context).size.height) / 812);
}

mqWidth(double width, BuildContext context) {
  return width * ((MediaQuery.of(context).size.width) / 375);
}

