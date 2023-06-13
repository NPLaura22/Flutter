// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, unused_element, library_private_types_in_public_api

import 'package:calculadora/my_home.dart';
import 'package:flutter/material.dart';

class MyCalc extends StatefulWidget {
  const MyCalc({Key? key}) : super(key: key);

  @override
  _MyCalcState createState() => _MyCalcState();
}

class _MyCalcState extends State<MyCalc> {
  TextEditingController campoTexto1 = TextEditingController();
  TextEditingController campoTexto2 = TextEditingController();
  double resultado = 0;

  void calcularSoma() {
    double valor1 = double.tryParse(campoTexto1.text) ?? 0;
    double valor2 = double.tryParse(campoTexto2.text) ?? 0;
    setState(() {
      resultado = valor1 + valor2;
    });
  }

  void calcularSubtracao() {
    double valor1 = double.tryParse(campoTexto1.text) ?? 0;
    double valor2 = double.tryParse(campoTexto2.text) ?? 0;
    setState(() {
      resultado = valor1 - valor2;
    });
  }

  void calcularMultiplicacao() {
    double valor1 = double.tryParse(campoTexto1.text) ?? 0;
    double valor2 = double.tryParse(campoTexto2.text) ?? 0;
    setState(() {
      resultado = valor1 * valor2;
    });
  }

  void calcularDivisao() {
    double valor1 = double.tryParse(campoTexto1.text) ?? 0;
    double valor2 = double.tryParse(campoTexto2.text) ?? 0;
    setState(() {
      resultado = valor1 / valor2;
    });
  }

  void limparCampos() {
    campoTexto1.clear();
    campoTexto2.clear();
    setState(() {
      resultado = 0;
    });
  }

  int _indice = 0;

   List<Widget> _telas = [
      MyHome(), 
      MyCalc(),
    ];

    void _itemClicado(int index) { 
      setState(() {
        _indice = index; 
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
        backgroundColor: const Color.fromARGB(255, 20, 49, 73),
        actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          icon: Icon(Icons.home),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/calculadora');
          },
          icon: Icon(Icons.numbers),
        ),
        ],
      ),
  
      body: Center(
        child: Column(
          children: [
            Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 100,
                ),
                SizedBox(
                  width: 120,
                  height: 40,
                  child: TextField(
                    controller: campoTexto1,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 79, 38, 87),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      filled: false,
                      //fillColor: Colors.green,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                Text(":INSIRA OS VALORES:"),
                SizedBox(
                  width: 120,
                   height: 40,
                  child: TextField(
                    controller: campoTexto2,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 79, 38, 87),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      filled: false,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: calcularSoma,
                  child: Text("+"),
                ),
                ElevatedButton(
                  onPressed: calcularSubtracao,
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: calcularMultiplicacao,
                  child: Text("*"),
                ),
                ElevatedButton(
                  onPressed: calcularDivisao,
                  child: Text("/"),
                ),
                ElevatedButton(
                  onPressed: limparCampos,
                  child: Text("CE"),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              "Resultado: $resultado",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
