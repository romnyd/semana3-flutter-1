import 'package:flutter/material.dart';
import 'package:semana3noticias/pages/home.page.dart';

void main() {
  runApp(MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplicacion de noticias",
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}
