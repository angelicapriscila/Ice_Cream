import 'package:flutter/material.dart';
import 'package:ice_cream/pages/perfil.dart';

class Pagamento extends StatefulWidget {
  const Pagamento({super.key});

  @override
  State<Pagamento> createState() => _PagamentoState();
}

class _PagamentoState extends State<Pagamento> {
  final List<String> pagamentos = ['Cartão de Crédito', 'Débito', 'Pix'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Perfil();
                  },
                ),
              );
            }),
        title: Text('Pagamentos'),
      ),
      body: ListView.builder(
        itemCount: pagamentos.length,
        itemBuilder: (context, index) {
          final method = pagamentos[index];
          return ListTile(
            title: Text(method),
            onTap: () {},
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Busca'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
        currentIndex: 2,
        selectedItemColor: Color(0xff000000),
      ),
    );
  }
}
