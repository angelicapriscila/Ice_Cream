import 'package:flutter/material.dart';
import 'package:helloworld/bd/databaseMilkshake.dart';
import 'package:helloworld/pages/HomePage.dart';
import 'package:helloworld/bd/database.dart';
import 'package:helloworld/widget/cardsCream.dart';
import 'package:helloworld/pages/detail_page.dart';
import 'package:helloworld/widget/cardsMilkshake.dart';
class LojasMilkshake extends StatefulWidget {
const LojasMilkshake({super.key});
@override
State<LojasMilkshake> createState() =>
_LojasMilkshakeState();
}
class _LojasMilkshakeState extends State<LojasMilkshake> {
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
SizedBox(height: 16),
Expanded(
child: ListView.builder(
shrinkWrap: true,
physics: NeverScrollableScrollPhysics(),
itemCount: DatabaseMilkshake.pacoteM.length,
itemBuilder: (context, i) {
return CardPacoteMilkshake(
pacoteMilkshake:
DatabaseMilkshake.pacoteM[i],
);
},
),
),
],
),
),
);
}
}
