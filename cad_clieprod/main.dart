import 'package:cad_clieprod/my_cliente.dart';
import 'package:cad_clieprod/my_home.dart';
import 'package:cad_clieprod/my_produto.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
        primarySwatch:  Colors.blueGrey, 
      ),
      //home: const MyTexto,
      routes: {
        '/': (context) => MyHome(),
        '/cliente': (context) => MyCliente(),
        '/produto':(context) => MyProduto(),
      },
    );
  }
}

