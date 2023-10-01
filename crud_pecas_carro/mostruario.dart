// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field, unused_element

import 'package:crud_pecas_carro/lista.dart';
import 'package:crud_pecas_carro/login.dart';
import 'package:crud_pecas_carro/peca.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indice = 0;
  List<Widget> _telas = [
    Login(),
    Peca(),
    Lista()
  ];
  
  //MÉTODO
  void _itemSelecionado (int index){
    setState(() {
      _indice = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mostruário de Peças Automotivas:"),
      automaticallyImplyLeading: false, //para tirar a setinha de voltar
      backgroundColor: Colors.purple,
      /*actions: [
        //LOGIN USER
        IconButton(onPressed: (){
          Navigator.pushNamed(context,'/');
        }, icon: Icon(Icons.person)),
        //CADASTRO DE PEÇAS
        IconButton(onPressed: (){
          Navigator.pushNamed(context,'/pecas');
        }, icon: Icon(Icons.miscellaneous_services_sharp)),
        //LISTAGEM DE PEÇAS
        IconButton(onPressed: (){
          Navigator.pushNamed(context,'/');
        }, icon: Icon(Icons.list)),
      ],*/
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, //para nao ter aquela barra amarela
          children: [
            SizedBox(height: 10,),
            //IMAGEM + TEXTO 1
            Container(
              color: Colors.white, //cor do fundo
              child: Text(
                'Turbocharger:  Componente essencial que comprime o ar admitido no motor, permitindo que mais combustível seja queimado e aumentando a potência.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Arial',
                  color: Colors.purple,
                ),
              ),
            ),
            Image.network(
              'https://www.hellionturbo.com/wp-content/uploads/Hellion_HT-6466R_T4_163211_transparent_web-1200x1200.png',
              fit: BoxFit.cover,
              height: 200,
            ),
            SizedBox(height: 8,),

            //IMAGEM + TEXTO 2   
            Container(
              color: Colors.purple, //cor do fundo
              child: Text(
                'Intercooler:  Resfria o ar comprimido pelo turbo antes de entrar no motor, o que aumenta a densidade do ar e melhora o desempenho.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),
              ),
            ),
            Image.network(
              'https://i.pinimg.com/564x/c8/1e/f9/c81ef93c7e114b37fa66ba3d8df14871.jpg',
              fit: BoxFit.cover,
              height: 200,
            ),
            SizedBox(height: 4,),  

            //IMAGEM + TEXTO 3   
            Container(
              color: Colors.white, //cor do fundo
              child: Text(
                'Injeção de Combustível de Alto Fluxo:  Garantem que o motor receba combustível suficiente para aproveitar ao máximo a pressão do turbo.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Arial',
                  color: Colors.purple,
                ),
              ),
            ),
            Image.network(
              'https://4.bp.blogspot.com/-5MNtpQGLCAU/U-owmyvVIAI/AAAAAAAAD-k/byqPXbnmX2Y/s1600/Capturar1.PNG',
              fit: BoxFit.cover,
              height: 200,
            ),
            SizedBox(height: 4,), 

            //IMAGEM + TEXTO 4   
            Container(
              color: Colors.purple, //cor do fundo
              child: Text(
                'Sistema de Escape de Alto Desempenho:  Incluindo coletores de escape e tubos maiores, ajuda a eliminar os gases de escape de forma mais eficaz, melhorando o fluxo de ar e a potência.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),
              ),
            ),
            Image.network(
              'https://sc04.alicdn.com/kf/Hd1e9029b7ff6455f849e03ad1336f5090.jpg',
              fit: BoxFit.cover,
              height: 200,
            ),
            SizedBox(height: 4,),  

            //IMAGEM + TEXTO 5   
            Container(
              color: Colors.white, //cor do fundo
              child: Text(
                'Suspensão de Desempenho:  Carros super rápidos muitas vezes têm suspensões ajustáveis e reforçadas para melhorar a dirigibilidade em altas velocidades.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Arial',
                  color: Colors.purple,
                ),
              ),
            ),
            Image.network(
              'https://oficinabrasil.com.br/uploads/imagens/pitstop/Freios-e-suspensao-sistemas-devem-ser-revisados-antes-das-ferias.jpg',
              fit: BoxFit.cover,
              height: 200,
            ),
            SizedBox(height: 4,),

            //IMAGEM + TEXTO 6   
            Container(
              color: Colors.purple, //cor do fundo
              child: Text(
                'Sistema de Escape de Alto Desempenho:  Incluindo coletores de escape e tubos maiores, ajuda a eliminar os gases de escape de forma mais eficaz, melhorando o fluxo de ar e a potência.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),
              ),
            ),
            Image.network(
              'https://www.motosblog.com.br/mb/wp-content/uploads/2012/04/Sistema-de-escape.gif',
              fit: BoxFit.cover,
              height: 200,
            ),
            SizedBox(height: 4,),

            //IMAGEM + TEXTO 7   
            Container(
              color: Colors.white, //cor do fundo
              child: Text(
                'Freios de Alto Desempenho:  Para parar um carro de alta potência, freios de alto desempenho, como freios a disco maiores e sistemas de freios ABS avançados, são essenciais.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Arial',
                  color: Colors.purple,
                ),  
              ),
            ),
            Image.network(
              'https://autocenterluciano.com.br/blog/wp-content/uploads/2019/12/Qual-a-diferen%C3%A7a-entre-Freio-a-Disco-e-Freio-a-Tambor.jpg',
              fit: BoxFit.cover,
              height: 200,
            ),
            SizedBox(height: 4,),

            //IMAGEM + TEXTO 8   
            Container(
              color: Colors.purple, //cor do fundo
              child: Text(
                'Carburador:  Responsável por dosar a quantidade de combustível que é injetado na mistura ar/combustível admitida pelo sistema de alimentação do motor.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Arial',
                  color: Colors.white,
                ),  
              ),
            ),
            Image.network(
              'https://images.tcdn.com.br/img/img_prod/424910/carburador_40_idf_high_volume_modelo_weber_c_cornetas_spa_turbo_3506_4_20171115114458.jpg',
              fit: BoxFit.cover,
              height: 200,
            ),
            SizedBox(height: 4,),

            //IMAGEM + TEXTO 9   
            Container(
              color: Colors.white, //cor do fundo
              child: Text(
                'Bobina:  Função de transformar a tensão vinda da bateria em alta tensão necessária à formação da centelha.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Arial',
                  color: Colors.purple,
                ),  
              ),
            ),
            Image.network(
              'https://images.tcdn.com.br/img/img_prod/662641/bobina_de_ignicao_vw_gol_g6_fox_up_kit_4_pecas_559_2_20190620090533.jpg',
              fit: BoxFit.cover,
              height: 200,
            ),
            SizedBox(height: 4,),
          ],
        ),
      ),
       bottomNavigationBar: BottomAppBar(
      color: Colors.purple,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: Icon(Icons.person),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/peca');
            },
            icon: Icon(Icons.miscellaneous_services_sharp),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/lista');
            },
            icon: Icon(Icons.list),
          ),
        ],
      ),
    ),
      
    );
  }
}