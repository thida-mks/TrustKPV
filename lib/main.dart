// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/features/screens/gold_price.dart';
import 'package:testing_app/features/screens/gold_provider.dart';
// import 'package:testing_app/features/screens/income_inputer.dart';
// import 'features/screens/gold_price.dart';
// import 'package:testing_app/features/screens/login.dart';

void main() {
   runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GoldProvider()),
      ],
      child: TestingApp(),
    )
  );
}

class TestingApp extends StatelessWidget {
  const TestingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Nato-Sans-Lao"),
      home: GoldPrice(),
    );
  }
}

