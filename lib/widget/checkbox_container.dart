import 'package:flutter/material.dart';

class CheckBoxContainer {

  //没选中
 static Widget unCheckBox =
    Container(
         width: 18,
         height: 18,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(18),
           border: Border.all(color: Colors.grey)
        ),
     );
 
  //选中
 static Widget checkedBox =  
   Container(
        width: 18,
        height: 18,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.red)
        ),
        child: Center(
          child: Text('√',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),),
        ),
    );

 
}

