import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/app_bar_container.dart';

class TestPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
     return 
      Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold (
            appBar:AppBarContainer(
              leading: InkWell(
                onTap: (){Navigator.pop(context);},
                child: Icon(
                Icons.arrow_back,
                size: 14,
              ),
            ),
            title: Text('哦哦哦，暂时没有内容哦啦！'),
    
          )
        )
      ),
    );
  
      
  }
 
  
}