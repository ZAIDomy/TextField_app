import 'package:flutter/material.dart';

class Mytextfield extends StatefulWidget {
  @override
  _MytextfieldState createState() => new _MytextfieldState();
 }
class _MytextfieldState extends State<Mytextfield> {

  String inputText="";
  final TextEditingController controller = TextEditingController();

  void  onSubmitText(String value){
    setState(() {
      inputText=inputText+"\n"+value;
      controller.text = "";
    });
  }


  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: AppBar(
       title: Text("TextField Widget"),
     ),
    body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(hintText: "Ingrese Texto Aqui"),
            onSubmitted: onSubmitText,
            controller: controller,
          ),
          Text(inputText)
      ],),
    ),
   );
  }
}