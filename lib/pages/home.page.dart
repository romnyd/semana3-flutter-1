import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _expressions = "";
  String _result = "";

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
    return Text("mi aplicacion");
  }
}
