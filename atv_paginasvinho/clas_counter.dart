// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, library_private_types_in_public_api

import 'package:flutter/material.dart';

class clas_counter extends StatefulWidget {
  const clas_counter({super.key});

  @override
  _clas_counterState createState() => _clas_counterState();
}


class _clas_counterState extends State<clas_counter> {
  void _increment(){
    setState(() {
      count++;
    });
  }

  void _decrement(){
    setState(() {
      count--;
    });
  }

  void mudarEstado () {
    if (count < -2){
      linkImagem = 'https://cdn-icons-png.flaticon.com/512/24/24915.png';
    }
    else if (count < 0 ){
      linkImagem = 'https://cdn-icons-png.flaticon.com/512/396/396818.png';
    }
    else if ( count == 0) {
      linkImagem = 'https://cdn-icons-png.flaticon.com/512/0/6.png';
    }
    else if ((count >0) && (count <=2)) {      
      linkImagem = 'https://cdn-icons-png.flaticon.com/512/65/65667.png';
    }
    else if ((count >2) && (count <=4)) {      
      linkImagem = 'https://cdn-icons-png.flaticon.com/512/38/38649.png';
    }
    else if ((count >4) && (count <=6)) {      
      linkImagem = 'https://cdn-icons-png.flaticon.com/512/719/719926.png';
    }
    else if ((count >6) && (count <=8)) {      
      linkImagem = 'https://cdn-icons-png.flaticon.com/512/38/38544.png';
    }
    else if ((count>=15) && (count<=25)) {
      linkImagem = 'https://cdn-icons-png.flaticon.com/512/185/185499.png';
    }
    else if (count>=25){
      linkImagem = 'https://cdn-icons-png.flaticon.com/512/40/40400.png';
    }
  }

  int count = 0;
  String linkImagem = 'https://cdn-icons-png.flaticon.com/512/0/6.png';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("L&L VINÍCOLA"),
      backgroundColor: Color.fromARGB(255, 37, 4, 2),
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
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          icon: Icon(Icons.home),
        ),
      ],
    ),
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,          
          children: [
            SizedBox(
              height: 90,
              child: Image.network(linkImagem)
            ),
            SizedBox(height: 10,),
            Text("Hoje o dia pede um vinho"),
            SizedBox(height: 10,),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 90, 40, 36),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: FloatingActionButton(
                    backgroundColor: Color.fromARGB(255, 187, 144, 141),
                    onPressed: () {
                    _decrement();
                    mudarEstado();
                  },
                    child: Text("-"),
                  ),
                ),

    SizedBox(width: 16),

    Text(count.toString()),

    SizedBox(width: 16),

    Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 187, 144, 141),
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 90, 40, 36),
        onPressed: () {
          _increment();
          mudarEstado();
        },
        child: Text("+"),
      ),
    ),
  ],
), 

    SizedBox(height: 22),
    Text("Total de taças:  $count"),

          ],
        ),
      ),
    );
  }
  
}