import 'package:helloworld/domain/Card_Sorvete.dart';
import 'package:helloworld/domain/card_IceCream.dart';
import 'package:helloworld/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/bd/database.dart';
import 'package:helloworld/bd/databaseSorvete.dart';
class CardPacoteSorvete extends StatefulWidget {
final PacoteSorvete pacoteSorvete;
const CardPacoteSorvete({
super.key,
required this.pacoteSorvete,
});
@override
State<CardPacoteSorvete> createState() =>
_CardPacoteSorveteState();
}
class _CardPacoteSorveteState extends State<CardPacoteSorvete>
{
PacoteSorvete get pacoteS => widget.pacoteSorvete;
@override
Widget build(BuildContext context) {
return Card(
color: Color(0xffff8ef2),
margin: const EdgeInsets.all(16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Image.network(pacoteS.urlimage),
Padding(
padding: const EdgeInsets.all(16),
  child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
pacoteS.titulo,
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
'${pacoteS.valor} Reais',
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
