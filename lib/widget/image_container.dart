import 'package:flutter/material.dart';
import 'package:flutter_demo/config/base_config.dart';
import 'package:flutter_demo/widget/cached_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageContainer extends StatelessWidget {
  final double width;
  final double height;
  final String imageUrl;
  final String title;
  final String price;
  final int maxLines;
  final double fontSize;
  final double priceFontSize;
  final int fontcolor;
  final int color;
  final BoxFit fit;

  ImageContainer({
    this.width,
    this.height,
    this.imageUrl,
    this.title,
    this.price,
    this.maxLines = 1,
    this.fontSize = 28,
    this.fontcolor = ColorConfig.fontColor2,
    this.priceFontSize = 30,
    this.color = 0xffffffff,
    this.fit = BoxFit.fitWidth, 
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: PhysicalModel(
        color: Color(color),
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(5),
        child: Column(
          children: _widgetList,
        ),
      )
    );
  }

  //组件

  List<Widget> get _widgetList {

     List<Widget> items = new  List<Widget>();
     items.add(
      Container(
        height: height ,
        width: width, 
        child: CachedImage(
          imageUrl: imageUrl,
          fit: fit,
        ),
      )
     );
 
     List<Widget> subItems = new  List<Widget>();
     
     if(price !=null){
       subItems.add(
         Text('￥$price',style: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold,fontSize: ScreenUtil().setSp(priceFontSize)),)
       );
     }

     if(title !=null){
       subItems.add(
         Padding(
           padding: EdgeInsetsDirectional.only(start:4,end: 2,bottom: 6),
           child: Text(title,maxLines: 2,overflow: TextOverflow.ellipsis,
             style: TextStyle(fontSize: ScreenUtil().setSp(fontSize), color: Colors.black87)),
         ) 
       );
     }
    
     if(subItems.length > 0){
        items.add(
          Container(
              width: width, 
              child: Column(
                children:  subItems,
              ),
            )
        );
     }

     return items;

  }

}