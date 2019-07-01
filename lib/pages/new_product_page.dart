import 'package:flutter/material.dart';
import 'package:flutter_demo/config/base_config.dart';
import 'package:flutter_demo/pages/detail_page.dart';
import 'package:flutter_demo/util/navigator_util.dart';
import 'package:flutter_demo/widget/app_bar_container.dart';
import 'package:flutter_demo/widget/bottom_loading_container.dart';
import 'package:flutter_demo/widget/image_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewProductPge extends StatefulWidget {
  final String title;
  final int type;
  NewProductPge({
    this.title,
    this.type
  });
 
  _NewProductPgeState createState() => _NewProductPgeState();
}

class _NewProductPgeState extends State<NewProductPge> {
  int _count = 10; 
  int _backgroundColor = ColorConfig.backgroundColor;

  var data = [{'image':'https://gd4.alicdn.com/imgextra/i4/706619803/O1CN01wZ5Ca12MHpAJRtCD9_!!706619803.jpg_400x400.jpg',
                'title':'2019流行裙子夏装新款韩版格子连衣裙收腰显瘦复古裙法式桔梗裙女',
                'price':'59.98'
              },
            ];
    
  bool _isHasData = false;  
  @override
  Widget build(BuildContext context) { 
    return Container(
       child:  Container(
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
             title: Text(widget.title),
          ),
          body: ListView(
            children: <Widget>[
              _wrapList
            ],
          ),
        )
      ),
    ),
    );
  }

  
   Widget get _wrapList{
 
    return Wrap(
      spacing: 2,
      alignment: WrapAlignment.center,
      children: _imageBox,
       
    );
  }

  List<Widget> get _imageBox{
    List<Widget> item = new List<Widget>();
    
    for(var i=1;i<= _count;i++) {
      item.add(_getListWidget(i));
    }
    
    
    item.add(BottomLoadingContainer(isLoadMore:_isHasData)) ;  
    return item;
  }

  Widget  _getListWidget(i){
    return
      InkWell(
        onTap: (){ 
          NavigatorUtil.push(context, 
           DetailPage(id: i)
          );
        },
        child:ImageContainer(
          height: ScreenUtil().setHeight(318),
          width:  ScreenUtil().setWidth(318),
          price: data[0]['price'],
          title: data[0]['title'],
          imageUrl: data[0]['image'],
      ),
    );
    
  }

}