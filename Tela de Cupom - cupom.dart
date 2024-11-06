import 'package:flutter/material.dart';
import 'package:ice_cream/pages/perfil.dart';

class Cupom extends StatefulWidget {
  const Cupom({super.key});

  @override
  State<Cupom> createState() => _CupomState();
}

class _CupomState extends State<Cupom> {
  final List<String> cupons = ['Cupom 1', 'Cupom 2', 'Cupom 3']; // Sample data

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
          },
        ),
        title: Text('Cupons'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () => Navigator.pushNamed(context, '/perfil'),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: cupons.length,
        itemBuilder: (context, index) {
          final coupon = cupons[index];
          return ListTile(title: Text(coupon), onTap: () {});
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
