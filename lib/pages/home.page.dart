import 'package:flutter/material.dart';
import 'package:semana3noticias/Providers/articulo.provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ArticuloProvider articuloProvider = ArticuloProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi Calculadora - @romnyd"),
        backgroundColor: Color(0xff202124),
      ),
      body: body(),
    );
  }

  body() {
    articuloProvider.getArticulos();
    return Text("mi aplicacion");
  }
}
