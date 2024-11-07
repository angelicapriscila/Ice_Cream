import 'package:flutter/material.dart';
import 'package:helloworld/pages/HomePage.dart';
class PromoSorvete extends StatefulWidget {
const PromoSorvete({super.key});
@override
State<PromoSorvete> createState() => _PromoSorveteState();
}
class _PromoSorveteState extends State<PromoSorvete> {
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xfff9f7f7),
appBar: AppBar(
leading: IconButton(
icon: Icon(Icons.arrow_back, size: 30, color:
Color(0xff928f8f)),
onPressed: () {
Navigator.pushNamedAndRemoveUntil(
context,
'/', // Rota da tela inicial
(Route<dynamic> route) => false,
);
},
),
),
body: Padding(
padding: const EdgeInsets.all(16.0),
child: ListView(
children: [
Image.network(
'https://www.gm7club.com.br/wp-content/uploads/2018/09/sonho-d
e-ver%C3%A3o.jpg',
  height: 250,
width: double.infinity,
),
Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'Sorvete de Casquinha',
style: TextStyle(
fontSize: 24,
fontWeight: FontWeight.bold,
),
),
const SizedBox(height: 4),
Text(
'R\$ 10,00',
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
color: Colors.black,
),
),
const SizedBox(height: 16),
SizedBox(
width: double.infinity,
child: ElevatedButton(
onPressed: () {},
style: ElevatedButton.styleFrom(
backgroundColor: Color(0xffbcedf7),
padding: const
EdgeInsets.symmetric(vertical: 16),
shape: RoundedRectangleBorder(
borderRadius:
BorderRadius.circular(8),
),
  ),
child: Text(
'Adicionar à sacola',
style: TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
color: Colors.black,
),
),
),
),
],
),
),
],
),
),
);
}
}
