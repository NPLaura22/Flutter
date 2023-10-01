// ignore_for_file: prefer_const_constructors

import 'package:crud_pecas_carro/edit.dart';
import 'package:crud_pecas_carro/peca_class.dart';
import 'package:crud_pecas_carro/peca_rep.dart';
import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  const Lista({super.key});

  @override
  State<Lista> createState() => _ListaState();
}

class _ListaState extends State<Lista> {
  List<Peca1> lista = [];

  //OBTEM LISTA DE PECAREP (VIA GET)
  List <Peca1> listPecas = PecaRep.getListaPecas;

  //FAZ UMA CÓPIA DA LISTA ORIGINAL DE PEÇAS QUE VEM DE REPOSITORY
  List<Peca1> listaBusca = [];

  //QUANDO DELETA UMA PEÇA DA LISTA ORIGINAL, PRECISA MANTER O NOME DIGITADO NO CAMPO DE BUSCA
  String marcaBusca = "";

  @override

  void initState(){ //chamado automaticamente quando um widget é inserido pela primeira vez na árvore de widgets
    listaBusca = List.from(listPecas); //CRIA UMA CÓPIA DA LISTA 'listPecas' e atribui à 'listaBusca'
      //listBusca agora tem mesmas infos que 'listaPecas'
      //List.from(listaPecas); --> cria nova lista com mesmos elementos da lista original
    super.initState(); //chama o método initState() da classe pai; sobrescrever o método initStat
  }

  void atualizaLista (String peca)
  {
    listaBusca = List.from(listPecas);
    setState(() {
      //seleciona somente os alunos com nome igual ao da busca e grava na cópia
      listaBusca = listPecas.where((element) => (
        element.peca.toLowerCase().contains(peca.toLowerCase()))).toList();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista de Peças Automotivas:"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.purple,
      ),

      body: SingleChildScrollView(
      child: Center(
        child: Column(children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SizedBox(width:350, height:30, 
              child: TextField (
                style: TextStyle(fontSize: 15, color: Colors.white ),
                decoration:  InputDecoration (
                  labelText: 'Nome - Peça',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.purple,  
                  labelStyle: TextStyle(color: Colors.white),                
                  prefixIcon: Icon(Icons.search, color: Colors.black,),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple), // Cor da borda (qnd ta em foco)
                  ),
                ),
                onChanged: (String peca) {
                  //guarda string do campo de busca caso seja necessário usar na exclusão
                  marcaBusca = peca;
                  atualizaLista(marcaBusca);
                },
            )
            ),
        ]
          ),
          SizedBox(height: 30),
        
      ListView.separated(
      shrinkWrap: true, //ajusta a tela para a quantidade de itens do listview | poderia ser sizedbox com tamanho fixo
      separatorBuilder: (BuildContext context, int index) =>Divider(thickness:4),
      itemCount: listaBusca.length,//importante
      itemBuilder: (BuildContext context, int index) {  
        return ListTile(
          
          title: Text(listaBusca[index].peca),
          subtitle: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(listaBusca[index].cod.toString()),
              SizedBox(width: 10,),
              Text('- ${listaBusca[index].qtd.toString()}'),
              SizedBox(width: 10,),
              Text('- ${listaBusca[index].valor.toString()}')
            ],
          ),
          leading: CircleAvatar(
            //COR - CIRCLEAVATAR
            /*child: Text(listaBusca[index].peca[0]),
            backgroundColor: Colors.orange,*/

            //IMAGEM - CIRCLEAVATAR
            backgroundImage: NetworkImage('https://i.pinimg.com/564x/6f/19/08/6f1908e7b43377dca744c14847d5e726.jpg'),
            radius: 25,
            ),
          trailing: SizedBox (
            width: 70,
            child: Row (children: [
              Expanded(child: IconButton(onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) {
                  return EditPeca(listaBusca[index], index);
                },));
                
              }, icon: Icon(Icons.edit)),),
              Expanded(child: IconButton(onPressed: () {
                Peca1 pec = listaBusca[index];
                PecaRep.remover(pec);
                setState(() { //para redesenhar a tela com os novos estados dos widgets
                 atualizaLista(marcaBusca);
                });
              }, icon: Icon(Icons.delete),))
            ]),
          ),
        );
      }, 

    ),

    Divider(thickness: 2,),
    ElevatedButton(onPressed: () {
      Navigator.pushNamed(context, '/home');
    },
     style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.purple), 
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), 
                ),
    child: Text("Voltar"),
    )
    ],
      ),
    )
    
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
              Navigator.pushNamed(context, '/home');
            },
            icon: Icon(Icons.car_repair),
          ),
        ],
      ),
    ),
    );
  }
}