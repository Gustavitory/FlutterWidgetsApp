
import 'package:components_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String titulo;
  final IconData icono;
  final String subtitulo;
  
  const CustomCard({
    super.key,
    required this.titulo,
    required this.icono,
    required this.subtitulo
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title:Text(titulo),
            leading: Icon(icono, color: AppTheme.primary,),
            subtitle: Text(subtitulo),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                  child:const Text('Cancel')
                  ),
                TextButton(
                  onPressed: (){},
                  child:const Text('Ok')
                  )
              ],
            ),
          )
        ]
      ),
    );
  }
}