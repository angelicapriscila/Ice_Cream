import 'package:helloworld/domain/card_IceCream.dart';
import 'package:helloworld/domain/card_Milkshake.dart';
import 'package:helloworld/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/bd/database.dart';
class CardPacoteIce extends StatefulWidget {
final PacoteIce pacoteIce;
const CardPacoteIce({
super.key,
required this.pacoteIce,
});
@override
State<CardPacoteIce> createState() => _CardPacoteIceState();
}
class _CardPacoteIceState extends State<CardPacoteIce> {
PacoteIce get Ice => widget.pacoteIce;
@override
Widget build(BuildContext context) {
return Card(
color: Color(0xff471a6b),
margin: const EdgeInsets.all(16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Image.network(Ice.urlimage),
Padding(
padding: const EdgeInsets.all(16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
Ice.titulo,
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
'${Ice.valor} Reais',
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
