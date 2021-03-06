import 'package:flutter/material.dart';  
import 'package:custom_switch/custom_switch.dart';  
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    
    return MaterialApp(  
        home: Scaffold(  
            appBar: AppBar(  
              backgroundColor: Colors.blue,  
              title: Text("Custom Switch Example"),  
            ),  
            body: Center(  
                  child: SwitchScreen()  
            ),  
        )  
    );  
  }  
}  
  
class SwitchScreen extends StatefulWidget {  
  @override  
  SwitchClass createState() => new SwitchClass();  
}  
  
class SwitchClass extends State {  
  bool isSwitched = false;  
  @override  
  Widget build(BuildContext context) {  
    return Column(  
        mainAxisAlignment: MainAxisAlignment.center,  
        children:<Widget>[  
            CustomSwitch(  
              value: isSwitched,  
              activeColor: Colors.blue,  
              onChanged: (value) {  
                print("VALUE : $value");  
                setState(() {  
                  isSwitched = value;  
                });  
              },  
            ),  
          SizedBox(height: 15.0,),  
          Text('Value : $isSwitched', style: TextStyle(color: Colors.red,  
              fontSize: 25.0),)  
        ]);  
    }  
}  