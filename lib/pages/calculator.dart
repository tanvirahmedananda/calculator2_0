import 'package:calculator2_0/providers/home_provider.dart';
import 'package:calculator2_0/utils/constants.dart';
import 'package:calculator2_0/widgets/costombutton.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Calculatorpage extends StatefulWidget {
  static const String routeName = "/calculator_page";

  const Calculatorpage({super.key});

  @override
  State<Calculatorpage> createState() => _CalculatorpageState();
}

class _CalculatorpageState extends State<Calculatorpage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (child, provider, _) {
      return Scaffold(
          backgroundColor:
              provider.mode ? Colors.black : Colors.white,
          body: Column(
            children: [
              ///Display
              Container(
                  height: 300,
                  width: double.infinity,
                  padding:const EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        height: 80,
                        child: Text(
                          provider.displayNumber2,
                          style: TextStyle(
                            color: provider.mode
                                ? displaytextcolor1
                                : displaytextcolor2,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        height: 160,
                        width: double.maxFinite,
                        child: AutoSizeText(
                          provider.displayNumber1,
                          style: TextStyle(
                            color: provider.mode
                                ? displaytextcolor1
                                : displaytextcolor2,
                            fontSize: 45
                          ),
                          softWrap: true,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  )),

              ///Buttons
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(22),
                        topRight: Radius.circular(22),
                      ),

                    color: provider.mode ? const Color(0xff27292e) : const Color(0xfff5f5f5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              provider.changeColor();
                            },
                            child: Button(
                              buttonText: "dr",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? primarybuttoncolor1
                                  : primarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? grad1buttoncolor1
                                  : grad1buttoncolor2,
                              buttonShadowColor: provider.mode
                                  ? secondarybuttoncolor1
                                  : secondarybuttoncolor2,
                              buttonShadowWidth: 2,
                            ),
                          ),
                          SizedBox(
                            height: sizeboxsize,
                          ),
                          GestureDetector(
                            onTap: () {
                              provider.addSymbol('7');
                            },
                            child: Button(
                              buttonText: "7",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? primarybuttoncolor1
                                  : primarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? buttontextcolor1
                                  : buttontextcolor2,
                            ),
                          ),
                          SizedBox(
                            height: sizeboxsize,
                          ),
                          GestureDetector(
                            onTap: () {
                              provider.addSymbol('4');
                            },
                            child: Button(
                              buttonText: "4",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? primarybuttoncolor1
                                  : primarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? buttontextcolor1
                                  : buttontextcolor2,
                            ),
                          ),
                          SizedBox(
                            height: sizeboxsize,
                          ),
                          GestureDetector(
                            onTap: () {
                              provider.addSymbol('1');
                            },
                            child: Button(
                              buttonText: "1",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? primarybuttoncolor1
                                  : primarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? buttontextcolor1
                                  : buttontextcolor2,
                            ),
                          ),
                          SizedBox(
                            height: sizeboxsize,
                          ),
                          GestureDetector(
                            onTap: () {
                              provider.ac();
                            },
                            child: Button(
                              buttonText: "AC",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? primarybuttoncolor1
                                  : primarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? grad1buttoncolor1
                                  : grad1buttoncolor2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: sizeboxsize,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              provider.addSymbol('%');
                              // provider.per();
                            },
                            child: Button(
                              buttonText: "%",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? primarybuttoncolor1
                                  : primarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? buttontextcolor1
                                  : buttontextcolor2,
                            ),
                          ),
                          SizedBox(
                            height: sizeboxsize,
                          ),
                          GestureDetector(
                            onTap: () {
                              provider.addSymbol('8');
                            },
                            child: Button(
                              buttonText: "8",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? primarybuttoncolor1
                                  : primarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? buttontextcolor1
                                  : buttontextcolor2,
                            ),
                          ),
                          SizedBox(
                            height: sizeboxsize,
                          ),
                          GestureDetector(
                            onTap: () {
                              provider.addSymbol('5');
                            },
                            child: Button(
                              buttonText: "5",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? primarybuttoncolor1
                                  : primarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? buttontextcolor1
                                  : buttontextcolor2,
                            ),
                          ),
                          SizedBox(
                            height: sizeboxsize,
                          ),
                          GestureDetector(
                            onTap: () {
                              provider.addSymbol('2');
                            },
                            child: Button(
                              buttonText: "2",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? primarybuttoncolor1
                                  : primarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? buttontextcolor1
                                  : buttontextcolor2,
                            ),
                          ),
                          SizedBox(
                            height: sizeboxsize,
                          ),
                          GestureDetector(
                            onTap: () {
                              provider.addSymbol('0');
                            },
                            child: Button(
                              buttonText: "0",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? primarybuttoncolor1
                                  : primarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? buttontextcolor1
                                  : buttontextcolor2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: sizeboxsize,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              provider.addSymbol('÷');
                              // provider.div();
                            },
                            child: Button(
                              buttonText: "÷",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? primarybuttoncolor1
                                  : primarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? buttontextcolor1
                                  : buttontextcolor2,
                            ),
                          ),
                          SizedBox(
                            height: sizeboxsize,
                          ),
                          GestureDetector(
                            onTap: () {
                              provider.addSymbol('9');
                            },
                            child: Button(
                              buttonText: "9",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? primarybuttoncolor1
                                  : primarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? buttontextcolor1
                                  : buttontextcolor2,
                            ),
                          ),
                          SizedBox(
                            height: sizeboxsize,
                          ),
                          GestureDetector(
                            onTap: () {
                              provider.addSymbol('6');
                            },
                            child: Button(
                              buttonText: "6",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? primarybuttoncolor1
                                  : primarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? buttontextcolor1
                                  : buttontextcolor2,
                            ),
                          ),
                          SizedBox(
                            height: sizeboxsize,
                          ),
                          GestureDetector(
                            onTap: () {
                              provider.addSymbol('3');
                            },
                            child: Button(
                              buttonText: "3",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? primarybuttoncolor1
                                  : primarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? buttontextcolor1
                                  : buttontextcolor2,
                            ),
                          ),
                          SizedBox(
                            height: sizeboxsize,
                          ),
                          GestureDetector(
                            onTap: () {
                              provider.addSymbol('.');
                            },
                            child: Button(
                              buttonText: ".",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? primarybuttoncolor1
                                  : primarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? buttontextcolor1
                                  : buttontextcolor2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: sizeboxsize,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              provider.addSymbol('x');
                              // provider.mul();
                            },
                            child: Button(
                              buttonText: "x",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? secondarybuttoncolor1
                                  : secondarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? buttontextcolor1
                                  : buttontextcolor2,
                            ),
                          ),
                          SizedBox(
                            height: sizeboxsize,
                          ),
                          GestureDetector(
                            onTap: () {
                              provider.addSymbol('-');
                              // provider.sub();
                            },
                            child: Button(
                              buttonText: "-",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? secondarybuttoncolor1
                                  : secondarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? buttontextcolor1
                                  : buttontextcolor2,
                            ),
                          ),
                          SizedBox(
                            height: sizeboxsize,
                          ),
                          GestureDetector(
                            onTap: () {
                              provider.addSymbol('+');
                              // provider.add();
                            },
                            child: Button(
                              buttonText: "+",
                              buttonHeight: buttonheight,
                              buttonWidth: buttonwidth,
                              buttonTextSize: 20,
                              buttonColor: provider.mode
                                  ? secondarybuttoncolor1
                                  : secondarybuttoncolor2,
                              buttonTextColor: provider.mode
                                  ? buttontextcolor1
                                  : buttontextcolor2,
                            ),
                          ),
                          SizedBox(
                            height: sizeboxsize,
                          ),
                          GestureDetector(
                            onTap: () {
                              provider.equal();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(buttonborder),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: <Color>[
                                      provider.mode
                                          ? grad1buttoncolor1
                                          : grad1buttoncolor2,
                                      provider.mode
                                          ? grad2buttoncolor1
                                          : grad2buttoncolor2,
                                    ]),
                              ),
                              height: ((buttonheight * 2) + sizeboxsize),
                              width: buttonwidth,
                              alignment: Alignment.center,
                              child: Text(
                                "=",
                                style: TextStyle(
                                    color: provider.mode
                                        ? buttontextcolor1
                                        : buttontextcolor2,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ));
    });
  }
}
