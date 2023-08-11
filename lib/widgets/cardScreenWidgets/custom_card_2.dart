import 'package:components_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  final String imageURl;
  final String? footer;
  const CustomCard2({
    super.key,
    required this.imageURl,
    this.footer
    });
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(.5),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Column(
        children: [
           FadeInImage(
            image:  NetworkImage(imageURl),
            placeholder:const  AssetImage('assets/jar-loading.gif'),
            width: double.infinity,// en este caso el width es limitado
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration:const Duration(milliseconds: 250),
          ),
          if(footer!=null)
          Container(
            padding: const EdgeInsets.only(right: 20, top:10, bottom: 10),
            alignment: Alignment.centerRight,
            child:Text(footer!)
          )
        ],
      ),
    );
  }
}