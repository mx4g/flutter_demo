import 'package:flutter/material.dart';
import 'package:flutter_demo/config/base_config.dart';
import 'package:flutter_demo/pages/cart_page/cart_item.dart';
import 'package:flutter_demo/widget/app_bar_container.dart';
import 'package:flutter_demo/widget/bottom_loading_container.dart';
import 'package:flutter_demo/widget/checkbox_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CartPage extends StatefulWidget {
 
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  int _grey3 = ColorConfig.grey3;
  int _grey4 = ColorConfig.grey4;
  int _fontColor1 = ColorConfig.fontColor1;
  int _fontColor2 = ColorConfig.fontColor2;

  var _shoppingCartData = [

    { 'name':'Techwood 电烧烤炉 多功能烤涮一体锅 家用无烟电烤炉韩式电烤盘电火锅烤',
      'price':'288.00','count':'1','remark':'三层尊享-多用款=烤肉+火锅+烤串',
      'image':'https://img10.360buyimg.com/cms/s80x80_jfs/t1/26480/35/1706/368458/5c14e954E496c642c/9fc89b0d1525a882.jpg'},

    { 'name':'小米9 4800万超广角三摄 6GB+128GB深空灰 骁龙855 全网通',
      'price':'2999.00','count':'1','remark':'0.487kg 深空灰 6GB+128GB',
      'image':'https://img10.360buyimg.com/cms/s80x80_jfs/t1/15089/22/14799/205257/5caabeabEcac5ef94/12fc8119d31e58c3.jpg'},
    
    { 'name':'九阳（Joyoung） 破壁机静音冷热双玻璃杯多功能果汁机榨汁机带真空预约',
      'price':'2799.00','count':'1','remark':'L18-Y68S香槟金',
      'image':'https://img10.360buyimg.com/cms/s80x80_jfs/t1/63508/34/2643/106892/5d10765fEdbe145c7/f61d5830b9ac881c.jpg'},

    { 'name':'Apple Macbook Pro 13.3【带触控栏】Core i5 8G 256G',
      'price':'12299.00','count':'1','remark':'2.58kg 18款13.3英寸 八代i5 8G 256G灰',
      'image':'https://img10.360buyimg.com/cms/s80x80_jfs/t1/15445/5/2946/178160/5c2325f9Ee9236ae9/6c2a5e9f2d14489a.jpg'},  
  ];

  ScrollController  scrollController = new ScrollController(); 
  int count = 4;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: _appBar,
      body: Column(
        children: <Widget>[
          _topPart,
          _shoppingCarListItem
        ],
      ),
    );
  }

  Widget get _appBar {
 
   return AppBarContainer(
     title: Text('购物车',style: TextStyle(color: Colors.black, fontSize: ScreenUtil().setSp(36)),),
     actions:<Widget>[
       Padding(
         padding: EdgeInsetsDirectional.only(end: 18),
         child:Row(
           children: <Widget>[
             InkWell(
               onTap: (){},
               child: Text('编辑',style: TextStyle(color: Colors.grey, fontSize: ScreenUtil().setSp(30)),),
              ),
           ],
         )
        )
      ]
   );
  }

  Widget get _topPart {
    return Container(
      height: ScreenUtil().setHeight(84),
      width: ScreenUtil().setWidth(750),
      decoration: BoxDecoration(
        color: Color(_grey3),
        border: Border(bottom: BorderSide(color: Color(_grey4)))
      ),
      child: Row(
        children: <Widget>[
          _checkBoxBlock,
          _checkBoxAllMsg,
        ],
      ),
    );

  }

  Widget get _checkBoxBlock {

    return Container(
      padding: EdgeInsetsDirectional.only(start: 8,end: 8),
      child: CheckBoxContainer.unCheckBox,
    );
  }
 
  Widget get _checkBoxAllMsg {

    return Padding(
      padding: EdgeInsetsDirectional.only(start: 4),
      child: Text('选择所有',style: TextStyle(color: Color(_fontColor2)),),
    );
  }
  
  Widget get _shoppingCarListItem {

    return Expanded(
      child:  ListView.builder(
        controller: scrollController,
        itemCount: count+1,
        itemBuilder:  _renderRow
      ) ,
    );
    
  }


  Widget _renderRow(BuildContext context, int index) {
   
    if (index < count) {
      var imageUrl = _shoppingCartData[index]['image'];
      var title = _shoppingCartData[index]['name'];
      var remark = _shoppingCartData[index]['remark'];
      var price = _shoppingCartData[index]['price'];
      var count = _shoppingCartData[index]['count'];

      return  CartItem(
        imageUrl: imageUrl,
        title: title,
        remark: remark,
        price: price,
        count: count,
        goodsItemBorderBottomColor: _grey4,
        remarkFontColor: _fontColor1,
        titlelFontColor: _fontColor2,
      );
       
    }
    return BottomLoadingContainer(isLoadMore: false,);
  }
  


}

 
          