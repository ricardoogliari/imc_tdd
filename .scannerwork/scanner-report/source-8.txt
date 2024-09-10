import 'package:flutter_test/flutter_test.dart';
import 'package:imc_tdd/config.dart';
import 'package:imc_tdd/bmi_controller.dart';

void main() {

  late BMIController controller;

  setUp((){
    controller = BMIController();
  });

  group('Test start and all levels of bmi logic', () {
    test('value should start at 0', () {
      expect(BMIController().result, results[0]);
    });

    test('value should be bmi level 1', () {
      controller.calcBmi(peso: 55.0, height: 1.79);

      expect(controller.result, results[1]);
    });

    test('value should be bmi level 2', () {
      controller.calcBmi(peso: 68.0, height: 1.79);

      expect(controller.result, results[2]);
    });

    test('value should be bmi level 3', () {
      controller.calcBmi(peso: 89.0, height: 1.79);

      expect(controller.result, results[3]);
    });

    test('value should be bmi level 4', () {
      controller.calcBmi(peso: 98.0, height: 1.79);

      expect(controller.result, results[4]);
    });

    test('value should be bmi level 5', () {
      controller.calcBmi(peso: 98.0, height: 1.52);

      expect(controller.result, results[5]);
    });
  });
}
