import 'package:flutter/material.dart';
import 'package:ice_cream/pages/cupom.dart';
import 'package:ice_cream/pages/pagamento.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  final List<ListTileData> lista = [
    //define uma lista imutavel de objetos listtiledata, que armazenam os dados para cada item da lista, icone e titulo
    ListTileData(icon: Icons.local_offer, title: 'Cupons'),
    ListTileData(icon: Icons.payment, title: 'Pagamentos'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(height: 100),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3yGM4ahz880gyuwSHcnky9WezYUU1TkVR6A&s'),
            ),
            SizedBox(width: 10),
          ],
        ),
        centerTitle: false, //nao centralizar
      ),
      body: ListView.builder(
        //cria uma lista dinamica que pode ser rolada
        itemCount: lista.length, //define o numero de itens na lista
        itemBuilder: (context, index) {
          //cria cada item da lista
          final itemData = lista[index];

          return ListTile(
            leading: Icon(itemData.icon),
            title: Text(itemData.title),
            onTap: () {
              if (index == 0) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Cupom()),
                );
              } else if (index == 1) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Pagamento()),
                );
              }
            },
          );
}
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicío'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Busca'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
        currentIndex: 2,
        selectedItemColor: Color(0xff000000),
      ),
    );
  }
}

class ListTileData {
  //criada pra armazenar informações sobre os itens de uma lista
  final IconData icon; //propriedade/tipo/nome armazena o icone
  final String title; //armazena o texto

  ListTileData(
      {required this.icon,
      required this.title}); //required: devem ser fornecidos o icone e o titulo ao criar a instancia
}
