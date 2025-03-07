import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final TextEditingController _controller = TextEditingController();
  String result = "";

  void calculateExpression() {
    try {
      // Get the input expression from the user
      String expression = _controller.text;

      // Use the math_expressions parser
      Parser parser = Parser();
      Expression exp = parser.parse(expression);

      // Define the context model (empty here for basic calculations)
      ContextModel cm = ContextModel();

      // Evaluate the expression
      double eval = exp.evaluate(EvaluationType.REAL, cm);

      // Update the result
      setState(() {
        result = eval.toString();
      });
    } catch (e) {
      // Handle errors gracefully
      setState(() {
        result = "Error in expression!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter Expression",
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: calculateExpression,
              child: const Text("Calculate"),
            ),
            const SizedBox(height: 16),
            Text(
              "Result: $result",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
