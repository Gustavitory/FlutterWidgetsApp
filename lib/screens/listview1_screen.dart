import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options=const ['Megaman','MetalGear', 'Super Smash', 'Final Fantasy'];
  const ListView1Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('ListView Tipo 1'),
      ),
      body:ListView(
        children:[
          ...options.map(
            (e) => ListTile(
            leading:const Icon(Icons.access_alarm),
            title: Text(e),
          )
            ).toList()
        ],
      ),
    );
  }
}