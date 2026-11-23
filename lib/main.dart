import 'package:flutter/material.dart';
import 'Telas/Telas_Boas_vindas.dart'; // <-- Caminho exato da sua pasta e arquivo

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelasBoasVindas(),
    );
  }
}
