import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options=const ['Megaman','MetalGear', 'Super Smash', 'Final Fantasy'];
  const ListView2Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('ListView Tipo 2'),
      ),
      body:ListView.separated(
        itemBuilder:(context, i) =>ListTile(
          title: Text(options[i]),
          leading:const Icon(Icons.access_alarm,color: Colors.indigo,),
          onTap: () => true,
        ) ,
        itemCount: options.length,
        separatorBuilder:(_,__) => const Divider() ,
      ),
    );
  }
}