import 'package:hive_flutter/hive_flutter.dart';
// ignore: unused_import
import 'package:flutter_application_finance/Screeens/home.dart';
// ignore: unused_import
import 'package:flutter_application_finance/Screeens/statistics.dart';
import 'package:flutter_application_finance/widgets/bottomnavigationbar.dart';
import 'package:flutter/material.dart';


import 'data/model/add_date.dart';


void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottom(),
    );
  }
}
