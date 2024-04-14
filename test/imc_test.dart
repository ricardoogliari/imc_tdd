import 'package:flutter_test/flutter_test.dart';
import 'package:imc_tdd/config.dart';
import 'package:imc_tdd/bmi_controller.dart';

void main(){
  group('Test start and all levels of bmi logic', (){
    test('value should start at 0', () {
      expect(BMIController().result, results[0]);
    });

    test('value should be bmi level 1', () {
      final out = BMIController();

      out.calcBmi(peso: 55.0, altura: 1.79);

      expect(out.result, results[1]);
    });

    test('value should be bmi level 2', () {
      final controller = BMIController();

      controller.calcBmi(peso: 68.0, altura: 1.79);

      expect(controller.result, results[2]);
    });

    test('value should be bmi level 3', () {
      final controller = BMIController();

      controller.calcBmi(peso: 89.0, altura: 1.79);

      expect(controller.result, results[3]);
    });

    test('value should be bmi level 4', () {
      final controller = BMIController();

      controller.calcBmi(peso: 98.0, altura: 1.79);

      expect(controller.result, results[4]);
    });

    test('value should be bmi level 5', () {
      final controller = BMIController();

      controller.calcBmi(peso: 98.0, altura: 1.52);

      expect(controller.result, results[5]);
    });
  });
}