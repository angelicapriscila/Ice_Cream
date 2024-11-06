import 'package:helloworld/domain/Card_Picole.dart';
import 'package:helloworld/domain/card_IceCream.dart';
import 'package:helloworld/domain/card_Milkshake.dart';
import 'package:helloworld/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/bd/database.dart';
import 'package:helloworld/widget/cardsCream.dart';
class CardPacotePicole extends StatefulWidget {
final PacotePicole pacotePicole;
const CardPacotePicole({
super.key,
required this.pacotePicole,
});
@override
State<CardPacotePicole> createState() =>
_CardPacotePicoleState();
}
class _CardPacotePicoleState extends State<CardPacotePicole> {
PacotePicole get pacoteP => widget.pacotePicole;
@override
Widget build(BuildContext context) {
return Card(
color: Color(0xffffc900),
margin: const EdgeInsets.all(16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Image.network(pacoteP.urlimage),
Padding(
padding: const EdgeInsets.all(16),
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
pacoteP.titulo,
style: const TextStyle(
color: Color(0xffffffff),
fontSize: 21,
fontWeight: FontWeight.bold,
),
),
Row(
children: [
const SizedBox(width: 4),
Text(
'${pacoteP.valor} Reais',
style: TextStyle(
color:
Color(0xffffffff), // Altere
para a cor desejada
),
),
const SizedBox(width: 8),
],
),
],
),
),
],
));
}
}
