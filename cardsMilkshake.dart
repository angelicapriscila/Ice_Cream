import 'package:helloworld/domain/card_IceCream.dart';
import 'package:helloworld/domain/card_Milkshake.dart';
import 'package:helloworld/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/bd/database.dart';
import 'package:helloworld/widget/cardsCream.dart';
class CardPacoteMilkshake extends StatefulWidget {
final PacoteMilkshake pacoteMilkshake;
const CardPacoteMilkshake({
super.key,
required this.pacoteMilkshake,
});
@override
State<CardPacoteMilkshake> createState() =>
_CardPacoteMilkshakeState();
}
class _CardPacoteMilkshakeState extends
State<CardPacoteMilkshake> {
PacoteMilkshake get pacoteM => widget.pacoteMilkshake;
@override
Widget build(BuildContext context) {
return Card(
color: Color(0xff86f0b6),
margin: const EdgeInsets.all(16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Image.network(pacoteM.urlimage),
Padding(
padding: const EdgeInsets.all(16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
  children: [
Text(
pacoteM.titulo,
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
'${pacoteM.valor} Reais',
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
  
