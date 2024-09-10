import 'package:flutter/foundation.dart';
import 'package:imc_tdd/config.dart';

class BMIController extends ChangeNotifier {
  String _result = results[0];
  String get result => _result;

  void calcBmi({required double peso, required double height}) {
    final imc = peso / (height * height);

    if (imc < 18.5) {
      _result = results[1];
    } else if (imc <= 24.9) {
      _result = results[2];
    } else if (imc <= 29.9) {
      _result = results[3];
    } else if (imc <= 39.9) {
      _result = results[4];
    } else {
      _result = results[5];
    }

    notifyListeners();
  }
}
