import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/cart_page/cart_count.dart';
import 'package:flutter_demo/widget/checkbox_container.dart';
import 'package:flutter_demo/widget/image_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatefulWidget {
  final String imageUrl;
  final String price;
  final String title;
  final String remark;
  final String count;
  final int titlelFontColor;
  final int remarkFontColor;
  final int goodsItemBorderBottomColor;
 
  CartItem({
    this.imageUrl,
    this.price,
    this.title,
    this.remark,
    this.count,
    this.titlelFontColor = 0xff000000,
    this.remarkFontColor = 0xffeeeeee,
    this.goodsItemBorderBottomColor = 0xffdddddd,
 
  });

  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  
  @override
  Widget build(BuildContext context) {
    return  _listItem;
  }

 
 
  Widget get  _listItem {
    return Container(
      padding: EdgeInsetsDirectional.only(end: 8,bottom: 5,top: 5),
      height: ScreenUtil().setHeight(230),
      width: ScreenUtil().setWidth(750),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(widget.goodsItemBorderBottomColor)))
      ),
      child: Row(
        children: <Widget>[
          _checkBoxBlock,
          _goodsLeftImage,
          Expanded(
            flex: 1,
            child: _goodsRightDesc,
          ),
        ],
      ),
    );
  }

  Widget get _checkBoxBlock {

    return Container(
      padding: EdgeInsetsDirectional.only(start: 8,end: 8),
      child: InkWell(
        onTap: (){},
        child: CheckBoxContainer.unCheckBox,
      ),
    );
  }
  
  Widget get  _goodsLeftImage {

    return 
      InkWell(
        onTap: (){},
        child: ImageContainer(
        width: ScreenUtil().setWidth(189),
        height: ScreenUtil().setHeight(189),
        imageUrl: widget.imageUrl,
      ),
    );
 
  }

  Widget get _goodsRightDesc {
    var price = widget.price;
    var goodsName = widget.title;
    var remark = widget.remark;
    var count = widget.count;
    
    return Container(
    
      padding: EdgeInsetsDirectional.only(start: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          //title
          Padding(
            padding: EdgeInsetsDirectional.only(bottom: 4),
            child: Text(goodsName,
              style: TextStyle(color: Color(widget.titlelFontColor),fontSize: 14),
              maxLines: 2,overflow: TextOverflow.ellipsis,),
          ),

          //remark
          Padding(
            padding: EdgeInsetsDirectional.only(bottom: 20),
            child: Text(remark,
              style: TextStyle(color: Color(widget.remarkFontColor),fontSize: 12),
              maxLines: 1,overflow: TextOverflow.ellipsis,),
          ),
          
          //price + count
          Row(
            children: <Widget>[
              Container(
                child: Text('￥$price',style: TextStyle(color: Colors.deepOrange,fontSize: 14),),
              ),
              
              Expanded(
                flex: 1,
                child: Container(
                  height: 28,
            
                  alignment: Alignment.centerRight,
                  child: CartCount(count),
                
                ),
              )


            ],
          )



        ],
      ),
      
    );

  }

 }
