import 'package:flutter/material.dart';
import 'package:flutter_demo/config/base_config.dart';
import 'package:flutter_demo/widget/app_bar_container.dart';

class AppBarSetting {
  final String title;
  final int fontColor;
  final double fontSize;
  AppBarSetting({
    this.title,
    this.fontColor = ColorConfig.fontColor2,
    this.fontSize = 16,
  });

  Widget arrowBack(BuildContext context){
    return AppBarContainer(
      title: Text(title,style: TextStyle(color: Color(fontColor),fontSize:fontSize) ,),
      backgroundColor: Color(ColorConfig.grey3),
      leading: InkWell(
        onTap: (){Navigator.pop(context);},
        child: Icon(
          Icons.arrow_back,
          size: 14,
        ),
      )
  );
  }
}
