import 'package:flutter/material.dart';
import 'screens/detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mes Produits',
      home: Details(),
    );
  }
}
