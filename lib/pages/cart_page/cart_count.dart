import 'package:flutter/material.dart';
import 'package:flutter_demo/config/base_config.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 

class CartCount extends StatelessWidget {
  var count;
  int _grey4 = ColorConfig.grey4;
  int _fontColor2 = ColorConfig.fontColor2;

  CartCount(this.count);



  @override
  Widget build(BuildContext context) {
   
 
    return  Container(

      width: 100,
      height: 26,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffdddddd)),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        children: <Widget>[
          _reduceBtn(),
          _countArea(),
          _addBtn(),
        ],
      ),
    );
    
  }
  // 减少按钮
  Widget _reduceBtn(){
   
     return Container(
      width: 26,
      height: 26,
      decoration: BoxDecoration(
        border: Border(right: BorderSide(color: Color(_grey4)))
      ),
      alignment: Alignment.center,
      child: Text('+'),
    );
  }

  //添加按钮
  Widget _addBtn(){
  
    return Container(
      width: 26,
      height: 26,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(left: BorderSide(color: Color(_grey4)))
      ),
      child: Text('-'),
    );
  }

  //中间数量显示区域
  Widget _countArea(){
    return Container(
      width: 46,
      height: 26,
      color: Colors.white,
      alignment: Alignment.center,
      child: Text('$count',style: TextStyle(color: Color(_fontColor2),fontSize: 14),),
    );
  }

}