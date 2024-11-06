import 'package:helloworld/bd/database.dart';
import 'package:helloworld/pages/LojasAcai.dart';
import 'package:helloworld/pages/LojasMilkshake.dart';
import 'package:helloworld/pages/LojasPicole.dart';
import 'package:helloworld/pages/LojasSorvete.dart';
import 'package:helloworld/pages/detail_page.dart';
import 'package:helloworld/widget/cardsCream.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/pages/PromoSorvete.dart';
import 'package:helloworld/pages/PromoPicole.dart';
class HomePage extends StatefulWidget {
const HomePage({super.key});
@override
State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
final List<String> suggestions = [
'Açaí com creme',
'Sorvete de chocolate',
'Milkshake de nutela',
];
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xfff9f7f7),
body: Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
children: [
SizedBox(height: 16),
Row(
children: [
Icon(Icons.arrow_back, size: 30, color:
Color(0xFF928f8f)),
Expanded(
child: Padding(
padding: const
EdgeInsets.symmetric(horizontal: 8.0),
child: Container(
decoration: BoxDecoration(
color: Color(0xff9dc0ce),
borderRadius:
BorderRadius.circular(8),
),
child: TextField(
decoration: InputDecoration(
hintText: 'Pesquisar',
contentPadding:
EdgeInsets.all(16.0),
border: InputBorder.none,
),
),
),
),
),
Icon(Icons.close, size: 30, color:
Color(0xff928f8f)),
SizedBox(width: 8),
],
),
SizedBox(height: 10),
Align(
alignment: Alignment.centerLeft,
child: Text(
'Buscas Recentes:',
  style: TextStyle(
fontSize: 16,
fontWeight: FontWeight.w500,
color: Colors.black,
),
),
),
Expanded(
child: ListView.builder(
itemCount: suggestions.length,
itemBuilder: (context, index) {
ListView.builder(
physics: const
NeverScrollableScrollPhysics(),
shrinkWrap: true,
itemCount: Database.pacotes.length,
itemBuilder: (context, i) {
return CardPacoteIce(
pacoteIce: Database.pacotes[i],
);
},
);
return ListTile(
leading: Icon(Icons.search, color:
Color(0xFF928f8f)),
title: Text(suggestions[index]),
);
},
),
),
SizedBox(height: 15),
Align(
alignment: Alignment.centerLeft,
child: Text(
'CATEGORIA',
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
  color: Colors.black,
),
),
),
SizedBox(height: 30),
Row(
mainAxisAlignment:
MainAxisAlignment.spaceEvenly,
children: [
ElevatedButton(
onPressed: () {
Navigator.pushReplacement(
context,
MaterialPageRoute(builder: (context) {
return LojasAcai();
}),
);
},
style: ElevatedButton.styleFrom(
backgroundColor: Color(0xffbcedf7),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(5),
),
),
child: const Text(
' Açai ',
style: TextStyle(
fontSize: 20,
color: Color(0xff000000),
fontWeight: FontWeight.bold,
),
),
),
SizedBox(width: 50),
ElevatedButton(
onPressed: () {
Navigator.pushReplacement(
  context,
MaterialPageRoute(builder: (context) {
return LojasSorvete();
}),
);
},
style: ElevatedButton.styleFrom(
backgroundColor: Color(0xffbcedf7),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(5),
),
),
child: const Text(
' Sorvete ',
style: TextStyle(
fontSize: 20,
color: Color(0xff000000),
fontWeight: FontWeight.bold,
),
),
),
],
),
SizedBox(height: 40),
Row(
mainAxisAlignment:
MainAxisAlignment.spaceEvenly,
children: [
ElevatedButton(
onPressed: () {
Navigator.pushReplacement(
context,
MaterialPageRoute(
builder: (context) {
return LojasMilkshake();
},
)
  },
style: ElevatedButton.styleFrom(
backgroundColor: Color(0xffbcedf7),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(5),
),
),
child: const Text(
'Milkshake',
style: TextStyle(
fontSize: 20,
color: Color(0xff000000),
fontWeight: FontWeight.bold,
),
),
),
SizedBox(width: 50),
ElevatedButton(
onPressed: () {
Navigator.pushReplacement(
context,
MaterialPageRoute(
builder: (context) {
return LojasPicole();
},
),
);
},
style: ElevatedButton.styleFrom(
backgroundColor: Color(0xffbcedf7),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(5),
),
),
child: const Text(
' Picolé ',
  style: TextStyle(
fontSize: 20,
color: Color(0xff000000),
fontWeight: FontWeight.bold,
),
),
),
],
),
SizedBox(height: 30),
Align(
alignment: Alignment.centerLeft,
child: Text(
'EM OFERTA',
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
color: Colors.black,
),
),
),
SizedBox(height: 20),
Row(
mainAxisSize: MainAxisSize
.min, // Para que o Row ocupe apenas o
espaço necessário
children: [
InkWell(
onTap: () {
Navigator.pushReplacement(
context,
MaterialPageRoute(
builder: (context) {
return PromoSorvete();
},
),
);
  },
child: Image.network(
'https://http2.mlstatic.com/casquinha-marvi-sorvete-de-cone-ex
tra-300und-D_NQ_NP_659992-MLB31005545394_062019-F.jpg',
width: 150,
height: 100,
),
),
SizedBox(width: 10), // Espaço entre as
imagens
InkWell(
onTap: () {
Navigator.pushReplacement(
context,
MaterialPageRoute(
builder: (context) {
return PromoPicole();
},
),
);
},
child: Image.network(
'https://th.bing.com/th/id/R.33957d2703fc2a87817941c69c5b4902?
rik=LGAM3pHBZ0HxHQ&riu=http%3a%2f%2f2.bp.blogspot.com%2f-fsk2F
aZHStI%2fTjc3UBrcnGI%2fAAAAAAAAA-k%2fyuwpiB9iCoQ%2fs1600%2ffud
gsicles.jpg&ehk=vcZv0rhBtCVSYn9Xa77iLRfNYZd1j2fvYrIB2Lj9POI%3d
&risl=&pid=ImgRaw&r=0',
width: 150,
height: 100,
),
),
],
),
SizedBox(height: 5),
Row(
  mainAxisAlignment:
MainAxisAlignment.spaceBetween,
children: [
Icon(Icons.home),
Icon(Icons.search),
Icon(Icons.person),
],
),
],
),
),
);
}
}
