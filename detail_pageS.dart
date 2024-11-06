import 'package:flutter/material.dart';
import 'package:helloworld/domain/Card_Sorvete.dart';
import 'package:helloworld/widget/cardsSorvete.dart';
class DetailPageS extends StatefulWidget {
final PacoteSorvete pacoteSorvete;
const DetailPageS({super.key, required this.pacoteSorvete});
@override
State<DetailPageS> createState() => _DetailPageSState();
}
class _DetailPageSState extends State<DetailPageS> {
PacoteSorvete get pacoteS => widget.pacoteSorvete;
@override
Widget build(BuildContext context) {
return Scaffold(
body: ListView(children: [
Stack(
children: [
Image.network(
pacoteS.urlimage,
height: 250,
width: 360,
),
Positioned(
left: 16,
top: 32,
child: IconButton(
icon: Icon(Icons.arrow_back, size: 25, color:
Colors.black),
onPressed: () {
Navigator.pop(context);
  },
),
),
],
),
Image.network(pacoteS.urlimage),
Padding(
padding: const EdgeInsets.all(16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
pacoteS.titulo,
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
),
),
const SizedBox(height: 8),
Row(
children: [
const SizedBox(width: 4),
buildText('${pacoteS.valor} reais'),
const Spacer(),
Container(
color: const Color(0xff5ea7d7),
child: Padding(
padding: EdgeInsets.symmetric(
vertical: 4,
horizontal: 8,
),
child: Text(
'-${pacoteS.valor}%',
style: TextStyle(
fontSize: 12,
fontWeight: FontWeight.bold,
color: Colors.white,
  ),
),
),
)
],
),
const SizedBox(height: 16),
const Divider(),
],
),
)
]),
);
}
buildText(String text) {
return Text(
text,
style: TextStyle(
fontSize: 14,
),
);
}
}
