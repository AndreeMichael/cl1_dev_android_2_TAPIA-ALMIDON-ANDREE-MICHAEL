//keyboardType: TextInputType.number,
// inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),  ],
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';  
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    final appTitle = 'CL1-Tapia Almidon Andree Michael ';  
    return MaterialApp(  
      title: appTitle,  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text(appTitle),  
        ),  
        body: MyCustomForm(),  
        
      ),  
    );  
  }  
}  

// Create a Form widget.  
class MyCustomForm extends StatefulWidget {  
  @override  
  MyCustomFormState createState() {  
    return MyCustomFormState();  
  }  
}  
// Create a corresponding State class, which holds data related to the form.  
class MyCustomFormState extends State<MyCustomForm> {  
  // Create a global key that uniquely identifies the Form widget  
  // and allows validation of the form.  
  final _formKey = GlobalKey<FormState>();  
  
  @override  
  Widget build(BuildContext context) {  
    // Build a Form widget using the _formKey created above.  
    return Form(  
      key: _formKey,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[

          TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'ingresa tu nombre',  
              labelText: 'Name',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'please ingresa tu nombre';  
              }  
              return null;  
            },  
          ), TextFormField(  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'ingresa tu apellido',  
              labelText: 'Apellido',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'ingresa tu apellido';  
              }  
              return null;  
            },  
          ), 
          TextFormField( 
           keyboardType: TextInputType.number,
           inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),  ],
            decoration: const InputDecoration(  
              icon: const Icon(Icons.numbers),
              hintText: 'ingresa tu edad',  
              labelText: 'EDAD',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'Please ingresa tu edad';  
              }  
              return null;  
            },  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.star_rate),  
            hintText: 'ingresa tu estado ',  
            labelText: 'estado',  
            ),  
            validator: (value) {  
              if (value!.isEmpty) {  
                return 'Estado';  
              }  
              return null;  
            },  
           ),  
          new Container(  
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
              child: new RaisedButton(  
                child: const Text('Procesar'),  
                onPressed: () {  
                  // It returns true if the form is valid, otherwise returns false  
                  if (_formKey.currentState!.validate()) {  
                    // If the form is valid, display a Snackbar.  
                    Scaffold.of(context)  
                        .showSnackBar(SnackBar(content: Text('Data is in processing.')));  
                  }  
                },  
              )),  
        ],  
      ),  
    );  
  }  
}  