import 'package:flutter/material.dart';
import 'package:flutter_demo/config/base_config.dart';
import 'package:flutter_demo/widget/circular_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MemberPage extends StatelessWidget {
  
  final int fontColor = ColorConfig.fontColor2;

  @override
  Widget build(BuildContext context) {
   return Container(
     child:ListView(
       children: <Widget>[
          _topHeader(),
          _orderTitle(),
          _orderType(),
          _actionList()
        
       ],
     ) ,
   );
  }

  //头像区域

  Widget _topHeader(){

    return Container(
      height: ScreenUtil().setHeight(180),
      color: Color(0xffeeeeee),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: _userFacePic(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text('我是蜘蛛侠',style: TextStyle(color: Color(fontColor)),),
          )
        ],
      ),
    );
  
  }

  //我的订单顶部
  Widget _orderTitle(){

    return Container(
      margin: EdgeInsets.only(top:10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom:BorderSide(width: 1,color:Colors.black12)
        )
      ),
      child: ListTile(
        leading: Icon(Icons.list),
        title:Text('我的订单'),
        trailing: Icon(Icons.arrow_right),
      ),
    );

  }

  Widget _orderType(){

    return Container(
      margin: EdgeInsets.only(top:5),
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(150),
      padding: EdgeInsets.only(top:20),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
            width: ScreenUtil().setWidth(187),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.party_mode,
                  size: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Text('待付款',style: TextStyle(color: Color(fontColor),fontSize: 14),),
                ),
              ],
            ),
          ),
          //-----------------
          Container(
            width: ScreenUtil().setWidth(187),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.query_builder,
                  size: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Text('待发货',style: TextStyle(color: Color(fontColor),fontSize: 14),),
                ),
              ],
            ),
          ),
           //-----------------
          Container(
            width: ScreenUtil().setWidth(187),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.directions_car,
                   size: 30,
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Text('待收货',style: TextStyle(color: Color(fontColor),fontSize: 14),),
                ),
              ],
            ),
          ),
          Container(
            width: ScreenUtil().setWidth(187),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.content_paste,
                   size: 30,
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 4),
                  child: Text('待评价',style: TextStyle(color: Color(fontColor),fontSize: 14),),
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }

  Widget _myListTile(String title){

    return Container(
       decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom:BorderSide(width: 1,color:Colors.black12)
        )
      ),
      child: ListTile(
        leading: Icon(Icons.blur_circular),
        title: Text(title),
        trailing: Icon(Icons.arrow_right),
      ),
    );
  }

  Widget _actionList(){
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
            _myListTile('领取优惠券'),
            _myListTile('已领取优惠券'),
            _myListTile('地址管理'),
            _myListTile('客服电话'),
            _myListTile('关于我们'),
        ],
      ),
    );
  }

  //头像
  Widget _userFacePic(){
    var url = 'https://img14.360buyimg.com/n7/jfs/t20131/219/1612938518/444249/f658a3af/5b2cfc67N8af9a5d5.jpg';
    return CircularImage(imageURL: url,width: 50,height: 50,circular:50);

  }



}