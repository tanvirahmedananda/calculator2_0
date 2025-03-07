import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeProvider extends ChangeNotifier {
  String displayNumber1 = '0';
  String displayNumber2 = '';
  String firstNumber = '';
  String secondNumber = '';
  String operation = '';
  List<String> operators = ['+', '-', 'x', '÷'];
  bool mode = true;

  addSymbol(String sym) {
    if (displayNumber1 == '0' && displayNumber1 != '0.') displayNumber1 = '';
    var lastChar;
    if (displayNumber1.isNotEmpty) {
      lastChar = displayNumber1.characters.last;
    }
    if ((displayNumber1 == "0" ||
            displayNumber1 == "" ||
            displayNumber1 == "+" ||
            displayNumber1 == "-") &&
        (sym == 'x' || sym == '÷' || sym == '%')) {
      return;
    }
    if (displayNumber1.length > 1 &&
        operators.contains(lastChar) &&
        displayNumber1[displayNumber1.length - 2] == "%" &&
        sym == "%") {
      return;
    }
    if (operators.contains(lastChar)) {
      if (operators.contains(sym) || sym == '%') {
        displayNumber1 = displayNumber1.substring(0, displayNumber1.length - 1);
        displayNumber1 = displayNumber1 + sym;
        notifyListeners();
        return;
      } else {
        displayNumber1 = displayNumber1 + sym;
      }
    } else if (lastChar == '%' && sym == '%') {
      return;
    } else {
      displayNumber1 = displayNumber1 + sym;
    }
    notifyListeners();
  }

  ac() {
    displayNumber1 = '0';
    displayNumber2 = '';
    firstNumber = '';
    secondNumber = '';
    notifyListeners();
  }

  String preprocessExpression(String expression) {
    // Match numbers followed by `%` and replace them correctly
    return expression.replaceAllMapped(RegExp(r'(\d+(\.\d+)?)%'), (match) {
      return '(${match.group(1)}/100)';
    }).replaceAllMapped(RegExp(r'([\d.]+)\s*([\+\-])\s*([\d.]+)%'), (match) {
      return '${match.group(1)} ${match.group(2)} (${match.group(1)} * ${match.group(3)}/100)';
    });
  }

  double evaluateExpression(String expression) {
    try {
      String modifiedExpression = preprocessExpression(expression);
      Parser parser = Parser();
      Expression exp = parser.parse(modifiedExpression);
      ContextModel cm = ContextModel();
      return exp.evaluate(EvaluationType.REAL, cm);
    } catch (e) {
      throw Exception("Invalid Expression");
    }
  }

  equal() {
    String expression = displayNumber1;
    StringBuffer newExpression = StringBuffer();
    List<String> operators = ["+", "-", "x", "÷"];
    String lastNumber = "", last2Number = "", lastOperator = "";
    for (var char in expression.split('')) {
      if (char == "%") {
        if (lastOperator == "x" || lastOperator == "÷" || lastOperator == "") {
          newExpression.write("/100");
        }
        if (lastOperator == "+" || lastOperator == "-") {
          newExpression.write("/100*$last2Number");
        }
      } else {
        newExpression.write(char);
        if (operators.contains(char)) {
          lastOperator = char;
          last2Number = lastNumber;
          lastNumber = "";
        } else {
          lastNumber = lastNumber + char;
        }
      }
    }
    expression = newExpression.toString();
    newExpression.clear();
    for (var char in expression.split('')) {
      if (char == "x") {
        newExpression.write("*");
      } else if (char == "÷") {
        newExpression.write("/");
      } else {
        newExpression.write(char);
      }
    }

    print(newExpression.toString());
    displayNumber2 = displayNumber1;
    double result = evaluateExpression(newExpression.toString());
    displayNumber1 = result.toString();
    if (displayNumber1[displayNumber1.length - 2] == "." &&
        displayNumber1[displayNumber1.length - 1] == "0") {
      displayNumber1 = displayNumber1.substring(0, displayNumber1.length - 2);
    }
    print(displayNumber1);
    notifyListeners();
  }

  changeColor() {
    mode = !mode;
    notifyListeners();
  }
}
