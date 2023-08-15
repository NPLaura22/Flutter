  // ignore_for_file: prefer_const_constructors, unused_element, unused_field

  import 'package:flutter/material.dart';
import 'package:flutter_application_3/login.dart';


  class MyHome extends StatefulWidget {
    const MyHome({super.key});

    @override
    State<MyHome> createState() => _MyHomeState();
  }

  class _MyHomeState extends State<MyHome> {

    //ATRIBUTOS
    int _indice = 0;

    //ARRAY COM AS PAGINAS
    // ignore: prefer_final_fields
    List<Widget> _telas = [
      MyLogin(),
    ];

    //MÉTODO
    void _itemClicado(int index) { //index é a var que vai vir do bottomnavigation (0,1...)
      setState(() {
        _indice = index; //indice recebe index q vem do bottomnav, vai jogar no atributo indice e mudar a pagina 
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
    appBar: AppBar(
      title: Text("L&L LOGIN"),
      
      backgroundColor: Color.fromARGB(255, 247, 235, 234),
      
    ),
    body: SingleChildScrollView(
      scrollDirection: Axis.vertical,    
      child: Column(    
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center, --> para alinhar no cnetro verticalmente        
        children: [          
    Text(
      "Sejam bem-vindos\n à L&L Login", 
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 25,
        color: Color.fromARGB(255, 231, 221, 220),
      ),
    ),
    Icon(Icons.local_bar, color: Colors.white),
    SizedBox(height: 30),
    Image.network(
      'https://th.bing.com/th/id/R.0a1498f311006d1da3af23192cc716f5?rik=n7aDNDu7NODnDA&pid=ImgRaw&r=0',
      width: 500,
    ),
    //SizedBox(height: 10),
    Padding(
      padding: EdgeInsets.all(30),
      child: Text(
        "Aqui você terá uma experiência como nunca antes!!",
        style: TextStyle(
          fontSize: 18,
          color: Color.fromARGB(255, 220, 204, 203),
        ),
        textAlign: TextAlign.center,
      ),
    ),
  ],

      ),
    ),
  );

    }
  }