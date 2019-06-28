import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


//底部加载更多进度条组件
class BottomLoadingContainer extends StatelessWidget {
 
  final bool isLoadMore;
  final int bgColor;
  
 
  const BottomLoadingContainer(
         {
           @required this.isLoadMore,
           this.bgColor = 0xFFDDDDDD,
        });

  @override
  Widget build(BuildContext context) {
    return  
          _bottomloadMore;
        
  }

  Widget get _bottomloadMore {

     return   
       Container(
          height: 30,
          width:  ScreenUtil().setWidth(750),
          decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(5),
            //color: Color.fromARGB(50, 50, 50, 0),
            //color: Colors.transparent
            color: Color(bgColor)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
             _circularProgressIndicator,
             _loadingMsg
            ],
          ),
      ); 
  }

  Widget get _circularProgressIndicator {
    return 
      isLoadMore ? 
      Container(
        height: ScreenUtil().setHeight(28),
        width: ScreenUtil().setWidth(28),
        child: CircularProgressIndicator(
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.cyan),
        ),
      ): Text('');
  }

  Widget get _loadingMsg {
    var msg = isLoadMore? '加载中...' : '已经没有更多了';
    return  Padding(
      padding: EdgeInsetsDirectional.only(start: 10),
      child: Text(msg, style: TextStyle(color: Colors.black45,fontSize: ScreenUtil().setSp(30)),),
    );
  }
}
