import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Inputs y forms"),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10) ,
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  null;
                },
                //validacion:
                validator: (value){
                  if(value==null) return "Este campo es requerido";
                  if(value.length<3) return "Longitud minima";
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration:const  InputDecoration(
                  hintText: "Nombre del usuario",
                  labelText: "Nombre",
                  helperText: "Solo texto",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10))
                  )
                ),
                
              ),
            ],
          ),
          ),
      ),
    );
  }
}