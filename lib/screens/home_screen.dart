import 'package:components_app/router/app_routes.dart';
import 'package:components_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
// import 'package:components_app/screens/screens.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menuOptions=AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title:const Text('Componentes en flutter'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            title:Text(menuOptions[index].name),
            leading:Icon(menuOptions[index].icon,color: AppTheme.primary,),
            onTap: (){
              //ESTA ES LA FORMA FEA PERO QUE NOS PERMITE TENER UN MAYOR CONTROL SOBRE PROPIEDADES QUE NOS PUEDEN SER UTILES, COMO TRANSICION.
              // final route=MaterialPageRoute(builder: (context) => const ListView1Screen(),);
              // Navigator.push(context, route);
              //EL PUSH NO ES EL UNICO, TAMBIEN TENEMOS EL PUSHREPLACEMENT QUE ELIMINA EL HISTORIAL, ES UTIL PARA CUANDO HACES UN LOGIN.

              // AHORA LA FORMA FACIL:
              Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
            },
          ),
          separatorBuilder:(_, __) => const Divider() ,
          itemCount: menuOptions.length
        ),
    );
  }
}