import 'package:components_app/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes{
  static const initialRoute='home';

  static final menuOptions=<MenuOption>[
    // todo: borrar home
    MenuOption(route: 'listview1', icon: Icons.list_outlined, name: 'List View tipo 1', screen:const ListView1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list_alt_outlined, name: 'List View tipo 2', screen:const ListView2Screen()),
    MenuOption(route: 'card', icon: Icons.card_membership, name: 'Card Screen', screen:const CardScreen()),
    MenuOption(route: 'alert', icon: Icons.warning_amber, name: 'Alert Screen', screen:const AlertScreen()),
    MenuOption(route: 'avatar', icon: Icons.person, name: 'Avatar Screen', screen:const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.slow_motion_video_rounded, name: 'Animated', screen:const AnimatedScreen()),
    MenuOption(route: 'input', icon: Icons.input, name: 'Input', screen:const InputScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map <String,Widget Function(BuildContext)>appRoutes={};
    // for(int i=0;i<menuOptions.length;i++){
    //   final e=menuOptions[i];
    //   appRoutes.addAll({e.route : (BuildContext context)=> e.screen});
    // }
    appRoutes.addAll({'home':(BuildContext context)=>const HomeScreen()});
    for(var el in menuOptions){
      appRoutes.addAll({el.route : (BuildContext context)=> el.screen});
    }
    // Por que no usamos forEach?
    /*
    El bucle for permite al desarrollador ser claro y explícito en cuanto a su intención.
     Un retorno en el cuerpo del bucle for regresa desde el cuerpo de la función, donde 
     como retorno en el cuerpo del cierre forEach solo devuelve un valor para esa iteración
      del forEach. El cuerpo de un bucle for puede contener esperas, mientras que el cuerpo
     de cierre de un forEach no puede.
     */
    // menuOptions.forEach((e) => appRoutes.addAll({e.route : (BuildContext context)=> e.screen}));
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes={
  //       'home':(BuildContext context) => const HomeScreen(),
  //       'listView1':(BuildContext context)=> const ListView1Screen(),
  //       'listView2':(BuildContext context)=> const ListView2Screen(),
  //       'alert':(BuildContext context)=> const AlertScreen(),
  //       'card':(BuildContext context)=> const CardScreen(),
  //     };


  static MaterialPageRoute<dynamic> Function(dynamic) onGenerateRoute= (settings) {
        return MaterialPageRoute(builder: (context) =>const  HomeScreen(),);
      };
}