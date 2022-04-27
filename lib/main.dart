import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onestop_solution/Screens/home_screen.dart';


void main() {
  runApp(MaterialApp(
    //title: "Input Widget",
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
  ));

}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//final TextCtrl = new TextEditingController();
  String inputStr =" ";
  bool enabled = false;
  bool expanded = false;
  bool checked = false;
  late String radiovalue;

  int _value = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DoorStep Solution'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (String textInput) {
                setState(() {
                  inputStr = textInput;
                });
              },
              // controller: TextCtrl,
            ),
            Text(inputStr),
            Switch(
              onChanged: (bool val){
                setState(() {
                  enabled = val;
                  print(val);
                });
              },
              activeColor: Colors.green,
              activeTrackColor: Colors.greenAccent[400],
              value: enabled,
            ),
            ExpansionPanelList(
              expansionCallback: (i,bool val){
                setState((){
                  expanded = !val;
                });
              },
              children: [
                ExpansionPanel(
                  body: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text('Hello'),
                  ),
                  headerBuilder:  (BuildContext context, bool val){
                    return Center(
                      child:  Text('Tap on me',style: TextStyle(fontSize: 18.0),),
                    );
                  },
                  isExpanded: expanded,
                ),


              ],
            ),
            Radio(value: 1, groupValue: _value,
                onChanged:(String){
                  radiovalue;
                }
            ),
            Radio(value: 2, groupValue: _value,
                onChanged:(String){
                  radiovalue;

                }
            ),
            Radio(value: 3, groupValue: _value,
                onChanged:(String){
                  radiovalue;

                }
            )
          ],
        ),
      ),
    );
  }
}
