import 'package:flutter/material.dart';
import 'package:flutter_demo/config/base_config.dart';
import 'package:flutter_demo/navigator/tab_navigator.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
 
    
    return  MaterialApp(
      title: 'Flutter_Demo',
      debugShowCheckedModeBanner: false,  // Flutter去除右上角Debug标签
      theme: ThemeData(
         primaryColor: Color(ColorConfig.appBarColor),
         backgroundColor: Color(ColorConfig.backgroundColor)
      ),
      localizationsDelegates: [                              
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [                                    
        const Locale('zh','CH'),
        const Locale('en','US'),
      ],
      home: TabNavigator(),
    );
  }
}