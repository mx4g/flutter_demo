import 'package:flutter/material.dart';
import 'package:flutter_demo/config/base_config.dart';
import 'package:flutter_demo/pages/test_page.dart';
import 'package:flutter_demo/util/navigator_util.dart';
 
class SubNav extends StatelessWidget {
 
  final int crossAxisCount;
  final List<String> subNavList;
  final double height;
  final int backgourndColor;

  SubNav({
    this.subNavList,
    this.crossAxisCount = 5,
    this.height,
    this.backgourndColor = ColorConfig.backgroundColor,
    });

  @override
  Widget build(BuildContext context) {
   
    return Container(
      color: Color(backgourndColor),
      padding: EdgeInsetsDirectional.only(top: 10,bottom: 10),
      child: _items(context),
     );
  }


 

 
  Widget  _items(BuildContext context){
    
     List<Widget> items = new  List<Widget>();
     subNavList.forEach((val){
       items.add(_item(context,val));
     });

       //计算出第一行显示的数量
    int separate = (subNavList.length / 2 + 0.5).toInt();

    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: items.sublist(0, separate),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: items.sublist(separate, subNavList.length),
          ),
        )
      ],
    );
    
  } 


  Widget _item(context, text){

    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: (){ NavigatorUtil.push(context, TestPage());   },
        child: Column(
          children: <Widget>[
            _pic,
            _title(text)
          ],
        ),
      ),
    );
  }

  Widget get _pic {

    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.indigoAccent,
        borderRadius: BorderRadius.circular(40),
      ),
    );
  }

  Widget _title(String text){

    return Padding(
      padding: EdgeInsets.only(top: 3),
      child: Text(text,style: TextStyle(fontSize: 12,color: Color(ColorConfig.fontColor1)),),
    );
  }
}

 

 