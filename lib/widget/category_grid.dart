import 'package:flutter/material.dart';
import 'package:flutter_demo/config/base_config.dart';
import 'package:flutter_demo/pages/test_page.dart';
import 'package:flutter_demo/util/navigator_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 
class CategoryGrid extends StatelessWidget {
 
  final int crossAxisCount;
  final List<String> list;
  final double height;

  CategoryGrid({
    this.list,
    this.crossAxisCount = 5,
    this.height
    });

  @override
  Widget build(BuildContext context) {
    int _backgroundColor = ColorConfig.grey1;
    
    return Container(
      color: Color(_backgroundColor),
      height: height,
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
      onTap: (){ NavigatorUtil.push(context, TestPage());   },
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
      width: ScreenUtil().setWidth(80),
      height: ScreenUtil().setHeight(80),
      decoration: BoxDecoration(
        color: Colors.indigoAccent,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }

  Widget _title(String text){

    return Padding(
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(6)),
      child: Text(text,style: TextStyle(fontSize: ScreenUtil().setSp(24),color: Color(ColorConfig.fontColor1)),),
    );
  }
}

 

 