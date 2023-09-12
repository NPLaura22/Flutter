// ignore_for_file: unused_field, prefer_final_fields, non_constant_identifier_names, prefer_const_constructors
import 'package:atv_listview_carro/lista.dart';
import 'package:atv_listview_carro/login.dart';
import 'package:flutter/material.dart';

import 'carro.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    int _indice = 0;
  List<Widget> _telas = [
    Login(),
    Carro(),
    MyLista()
];
void _itemClicado(int index){
  setState(() {
    _indice=index;  
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Clássicos"),
      automaticallyImplyLeading: false, //para tirar a setinha de voltar
      backgroundColor: Colors.yellow,
      actions: [
        IconButton(onPressed: (){
          Navigator.pushNamed(context,'/');
        }, icon: Icon(Icons.person),),
        IconButton(onPressed: (){
          Navigator.pushNamed(context,'/carro');
        }, icon: Icon(Icons.car_rental),),
        IconButton(onPressed: (){
           Navigator.pushNamed(context,'/lista');
        }
        , icon: Icon(Icons.list_alt_sharp))
      ],
      ),

      body: SingleChildScrollView(
          child: Column(            
            crossAxisAlignment: CrossAxisAlignment.stretch,   
            children: [
              SizedBox(height: 4,),
              Image.network(
                'https://quatrorodas.abril.com.br/wp-content/uploads/2022/05/mercedes300slr-3.webp',
                fit: BoxFit.cover,
                height: 200,                
              ),
              Container(
                color: Colors.yellow, 
                child: Text(
                  'Mercedes-Benz 300 SLR Uhlenhaut Coupé 1955',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10, 
                    color: Colors.black, 
                    fontFamily: 'Arial', 
                  ),
                ),
              ),
              SizedBox(height: 4,),
              Image.network(
                'https://uncrate.com/p/2018/06/ferrari-250-gto-1.jpg',
                fit: BoxFit.cover,
                height: 200, 
              ),
              Container(
                color: Colors.yellow, 
                child: Text(
                  'Ferrari 250 GTO by Scaglietti 1962',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10, 
                    color: Colors.black, 
                    fontFamily: 'Arial', 
                  ),
                ),
              ),
              SizedBox(height: 4,),
              Image.network(
                'https://s2-autoesporte.glbimg.com/dCjbMKM4hqG1KKRjLtrissyiiI8=/0x333:3600x2400/1008x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2017/s/X/2PAiuDR9uHcxeGS1pDTg/mo17-r159-053.jpg',
                fit: BoxFit.cover,
                height: 200, 
              ),
              Container(
                color: Colors.yellow, 
                child: Text(
                  'Aston Martin DBR1 1956',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10, 
                    color: Colors.black, 
                    fontFamily: 'Arial', 
                  ),
                ),
              ),
              SizedBox(height: 4,),
              Image.network(
                'https://www.webmotors.com.br/wp-content/uploads/2022/10/28183607/Prsche-917K-F1.jpeg',
                fit: BoxFit.cover,
                height: 200,                
              ),
               Container(
                color: Colors.yellow, 
                child: Text(
                  'Porsche 917',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10, 
                    color: Colors.black, 
                    fontFamily: 'Arial', 
                  ),
                ),
              ),
              SizedBox(height: 4,),
              Image.network(
                'https://i.pinimg.com/originals/39/07/59/3907595e3c2ef53ef9ebb2325db9e0de.jpg',
                fit: BoxFit.cover,
                height: 200,                
              ),
              Container(
                color: Colors.yellow, 
                child: Text(
                  'Bugatti Type 41 Royale Kellner Coupé',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10, 
                    color: Colors.black, 
                    fontFamily: 'Arial', 
                  ),
                ),
              ),
              SizedBox(height: 4,),
              Image.network(
                'https://assets.rebelmouse.io/media-library/image.jpg?id=31789410&width=1200&height=800&quality=90&coordinates=0%2C28%2C0%2C29',
                fit: BoxFit.cover,
                height: 200,                
              ),
              Container(
                color: Colors.yellow, 
                child: Text(
                  'Jaguar XK120-C',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10, 
                    color: Colors.black, 
                    fontFamily: 'Arial', 
                  ),
                ),
              ),
              
            ],
          ),
      ),
    
      

    );
  }
}