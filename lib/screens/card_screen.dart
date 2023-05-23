import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Card Widget'),
      ),
      body:ListView(
        padding:const  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
         children:const [
          CustomCard(
            titulo: 'Accesibilidad',
            icono: Icons.accessibility_rounded,
            subtitulo: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
            ),
            SizedBox(height: 30,),//solo para añadir separacion
          CustomCard2(imageURl:'https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',footer: 'Screen Reference test',),
          SizedBox(height: 30,),//solo para añadir separacion
          CustomCard2(imageURl:'https://images.unsplash.com/photo-1500964757637-c85e8a162699?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGFpc2FqZXMlMjBoZXJtb3Nvc3xlbnwwfHwwfHw%3D&w=1000&q=80',),
          SizedBox(height: 30,),//solo para añadir separacion
          CustomCard2(imageURl:'https://blogdestinia.com/wp-content/uploads/2019/06/parque-nacional-banff.jpg',footer: 'Un hermoso paisaje',),
          SizedBox(height: 40,)

         ],
      ),
    );
  }
}