import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:saito_of_rice_app/db/database.dart';
import 'package:saito_of_rice_app/views/home_page.dart';

MyDatabase database;

void main() {
  database = MyDatabase();
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'お米のさいとうアプリ',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}
