//import 'dart:html';

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'clas_welcome.dart';


void main() {
  runApp(const Welcome());
}


class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'WelcomePage',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar (
          title: Text("Tipos de Vinho:"),
          backgroundColor:  Color.fromARGB(255, 37, 4, 2),
          actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/welcome');
          },
          icon: Icon(Icons.wine_bar),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/counter');
          },
          icon: Icon(Icons.countertops),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/us');
          },
          icon: Icon(Icons.person),
        ),
      ],
          //centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,          
          child: Center (
          child: Column (
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              SizedBox(
                width: 300,
                child: Image.network('https://www.divvino.com.br/blog/wp-content/uploads/2019/06/vinho-inverno.jpg'),
              ),
              SizedBox(height: 30,),
               DecoratedBox(
                  decoration: BoxDecoration (),
                  child: Padding (
                    padding: EdgeInsets.only(left: 50, right: 50),
                    child: Text("Anos e taças de vinho nunca devem ser contados!!", style: TextStyle(fontSize: 20, foreground: Paint()..color = const Color.fromARGB(255, 102, 53, 49), fontWeight: FontWeight.bold),),
                )
               ),
               SizedBox(height: 15,),
               DecoratedBox(
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.circular(10), 
                    border: Border.all(
                      color: Color.fromARGB(255, 97, 21, 21),
                      width: 10 
                    ),
                    
                    ),
                  child: Padding (
                    padding: EdgeInsets.all(20),
                    child: Text("Aqui você encontrará:", style: TextStyle(fontSize: 15),),
                  ),
               ),
               SizedBox(height: 10,),

               clas_welcome('https://www.evino.com.br/blog/wp-content/uploads/2021/08/vinho-tinto.jpg'," Vinho Tinto - ",20), //produzido por meio da fermentação do suco extraído de uvas tintas.
               clas_welcome('https://www.divinho.com.br/blog/wp-content/uploads/2020/11/Vinho_Branco.jpg'," Vinho Branco - ",25), //produzido a partir de uvas brancas e tintas.
               clas_welcome('https://www.evino.com.br/blog/wp-content/uploads/2021/07/vinho-rose-960x540.jpg'," Vinho Rosé - ",30), //produzido a partir de uvas tintas por diferentes estilos de vinificação.
               clas_welcome('https://www.latercera.com/resizer/r23fAPx2MDf40EmTC3VSSzbX6Fc=/900x600/smart/cloudfront-us-east-1.images.arcpublishing.com/copesa/Y4CU3BDYUZGGZMRJAVOMZEHBXM.jpg'," Espumante - ",25), //tipo de vinho produzido com gás carbônico dissolvido.
               clas_welcome('https://www.vemdauva.com.br/wp-content/uploads/2019/06/copos-vinho-carcavelos-1920px.jpg'," Vinho Licoroso - ",20), //tem a fermentação interrompida antes do término pela adição de aguardente vínica.
               

            ],
            
            
          )
          
        ),
        ),
        
        

      ),
    );
    
  }
}


  