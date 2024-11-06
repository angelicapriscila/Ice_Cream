import 'package:flutter/material.dart';
import 'package:helloworld/pages/HomePage.dart';
class PromoPicole extends StatefulWidget {
const PromoPicole({super.key});
@override
State<PromoPicole> createState() => _PromoPicoleState();
}
class _PromoPicoleState extends State<PromoPicole> {
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
'/',
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
'https://i0.wp.com/saudevidatotal.com/wp-content/uploads/2018/
02/Receita-de-Picol%C3%A9-Sensa%C3%A7%C3%A3o-de-Morango-com-Ca
squinha-de-Chocolate.jpg?fit=616%2C329&ssl=1',
height: 250,
width: double.infinity,
),
Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'Picole Trufado',
style: TextStyle(
fontSize: 24,
fontWeight: FontWeight.bold,
),
),
const SizedBox(height: 4),
Text(
'R\$ 5,00',
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
