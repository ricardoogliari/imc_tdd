import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:imc_tdd/bmi_controller.dart';
import 'package:imc_tdd/firebase_options.dart';
import 'package:imc_tdd/pages/insert_data.dart';
import 'package:imc_tdd/pages/result_imc.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ChangeNotifierProvider(
    create: (context) => BMIController(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InsertData(),
        '/result': (context) => const ResultIMC()
      },
    );
  }
}
