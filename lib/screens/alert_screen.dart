import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);


  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
          elevation: 5,
          title:const Text('Titulo'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Contenido'),
              SizedBox(height: 10,),
              FlutterLogo(size: 50,)
              ]
          ),
          actions: [
            TextButton(
              onPressed: ()=>Navigator.pop(context),
              child: const Text('Cancel')
            ),
            TextButton(onPressed: (){}, child: const Text('Submit'))
          ],
        );
      }
      );
  }

  void displayDialogIos(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context){
        return  CupertinoAlertDialog(
          title:const  Text('Titulo'),
          content:const  Column(
            mainAxisSize: MainAxisSize.min,
            children:[
              Text('Este es el content de la alerta'),
              SizedBox(height: 10,),
              FlutterLogo(size: 50,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: ()=>Navigator.pop(context),
              child: const Text('Cancel')
            ),
            TextButton(onPressed: ()=>Navigator.pop(context),
             child: const Text('Ok',))
          ],
        );
      }
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
         child: ElevatedButton(
          style: ElevatedButton.styleFrom(),
          onPressed:()=> {
            Platform.isAndroid?
            displayDialogAndroid(context):
            displayDialogIos(context)
            },
          child:const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Mostrar alerta'),
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: (){
          Navigator.pop(context);
        }
        ),
    );
  }
}