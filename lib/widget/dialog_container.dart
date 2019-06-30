import 'package:flutter/material.dart';

class DialogContainer {
 
  //底部弹出框
  void showModalBottomDialog({BuildContext context,Widget child})  {
    showModalBottomSheet(
        context: context,
        builder: (context){
          return GestureDetector(
            onTap:(){},
            onVerticalDragDown:(DragDownDetails details){},
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: child,
                  ),
                )
              ],
            )
          );
        }
    );
  }
  
}