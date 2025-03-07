import 'package:calculator2_0/pages/calculator.dart';
import 'package:calculator2_0/providers/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=> HomeProvider()),
  ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Calculatorpage.routeName,
      routes: {
        Calculatorpage.routeName : (_)=> const Calculatorpage(),
      },
    );
  }
}
