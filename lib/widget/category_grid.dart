import 'package:flutter/material.dart';
import 'package:flutter_demo/config/base_config.dart';
 
class CategoryGrid extends StatelessWidget {
 
  final int crossAxisCount;
  final List<String> list;

  CategoryGrid({
    this.list,
    this.crossAxisCount = 5});

  @override
  Widget build(BuildContext context) {
    int _backgroundColor = ColorConfig.grey1;
    
    return Container(
      color: Color(_backgroundColor),
      height: 140,
      child:  GridView.count(
        crossAxisCount: 5,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(10.0),
        children: list.map((String val) {
          return _item(context,val);
        }).toList(),
      ),
     );
  }

  Widget _item(context, text){

    return InkWell(
      onTap: (){   },
      child: Column(
        children: <Widget>[
          _pic,
          _title(text)
        ],
      ),
    );
  }

  Widget get _pic {

    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.indigoAccent,
        borderRadius: BorderRadius.circular(18),
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

 

 