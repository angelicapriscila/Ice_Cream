import 'package:flutter/material.dart';
import 'package:helloworld/domain/card_Milkshake.dart';
import 'package:helloworld/widget/cardsCream.dart';
import 'package:helloworld/domain/card_IceCream.dart';
class DetailPage extends StatefulWidget {
final PacoteMilkshake pacoteMilkshake;
const DetailPage({super.key, required
this.pacoteMilkshake});
@override
State<DetailPage> createState() => _DetailPageState();
}
class _DetailPageState extends State<DetailPage> {
PacoteMilkshake get pacoteM => widget.pacoteMilkshake;
@override
Widget build(BuildContext context) {
return Scaffold(
body: Column(
children: [
Image.network(pacoteM.urlimage),
Padding(
padding: const EdgeInsets.all(16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
pacoteM.titulo,
style: TextStyle(
fontSize: 20,
fontWeight: FontWeight.bold,
),
  ),
const SizedBox(height: 8),
Row(
children: [
const SizedBox(width: 4),
buildText('${pacoteM.valor} reais'),
const Spacer(),
Container(
color: const Color(0xff5ea7d7),
child: Padding(
padding: EdgeInsets.symmetric(
vertical: 4,
horizontal: 8,
),
child: Text(
'-${pacoteM.valor}%',
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
],
),
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
