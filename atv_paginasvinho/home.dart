  // ignore_for_file: prefer_const_constructors, unused_element, unused_field

  import 'package:atv2_portifolio/counter.dart';
import 'package:atv2_portifolio/us.dart';
import 'package:atv2_portifolio/welcome.dart';
  import 'package:flutter/material.dart';


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
      Welcome(), //primeira posicao (0) tem a ainstancia person 
      Counter(),
      Us(),
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
    body: SingleChildScrollView(
      scrollDirection: Axis.vertical,    
      child: Column(    
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center, --> para alinhar no cnetro verticalmente        
        children: [          
    Text(
      "Sejam bem-vindos\n à L&L Vinícola", 
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 25,
        color: Color.fromARGB(255, 231, 221, 220),
      ),
    ),
    Icon(Icons.local_bar, color: Colors.white),
    SizedBox(height: 30),
    Image.network(
      'https://cenciturismo.com.br/wp-content/uploads/2019/09/chianti-toscana-foto-tomas-marek-123rf.jpg',
      width: 500,
    ),
    //SizedBox(height: 10),
    Padding(
      padding: EdgeInsets.all(30),
      child: Text(
        "Aqui você terá uma experiência como nunca antes!! \nAproveite para provar todos os nossos vinhos.",
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
    bottomNavigationBar: BottomAppBar(
      color: Color.fromARGB(255, 37, 4, 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/welcome');
            },
            icon: Icon(Icons.wine_bar),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 37, 4, 2),
            ),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Acesse nossos recursos!",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/us');
            },
            icon: Icon(Icons.person),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/counter');
            },
            icon: Icon(Icons.countertops),
          ),
        ],
      ),
    ),
  );

    }
  }