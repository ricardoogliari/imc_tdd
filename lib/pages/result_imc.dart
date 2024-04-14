import 'package:flutter/material.dart';
import 'package:imc_tdd/bmi_controller.dart';
import 'package:provider/provider.dart';

class ResultIMC extends StatelessWidget {
  const ResultIMC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Your BMI result is:"),
            Text(Provider.of<BMIController>(context, listen: false).result)
          ],
        ),
      ),
    );
  }
}
