import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {

  runApp(const MaterialApp(
      title: 'Hello',
      home: SafeArea(
          child: CustomClass()
      )
  )
  );
}

class CustomClass extends StatelessWidget{
  const CustomClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),

              decoration: const BoxDecoration(color: Colors.blue),
              child: const Row(
                  children:  [IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,),
                    tooltip: "Hola barra",focusColor: Colors.white,
                  ),
                    Expanded(
                        child: Text("Menu principal",style: TextStyle(
                            color:Colors.white,
                            fontSize: 20),textAlign: TextAlign.center,)),
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,),
                      tooltip: "Boton de busqueda",)]
              ),
            ),
            const Expanded(
              child: Center(
                child: Text("Lo hice muy bien"),
              ),
            ),
          ],
        )
    );
  }}
