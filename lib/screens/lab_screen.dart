import 'package:flutter/material.dart';

class LabScreen extends StatelessWidget {
   
  const LabScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lab'),),
      body:const Center(
         child: Text('LabScreen'),
      ),
    );
  }
}