import 'package:flutter/material.dart';
import 'Telas/Telas_Boas_vindas.dart';



void main() {
  runApp(const MeuApp());


}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TelasBoasVindas(),
    );
  }
}