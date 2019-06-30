import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/dialog_container.dart';

class BottomDialogDetail {
    
    List<String> yfcolors = ["橙红色","灰色","白色"];
    List<String> yfsize = ["S","M","X","XL"];

    void  showModalBottomSheetDialog(BuildContext context){

    DialogContainer().showModalBottomDialog(
      context:context,
      child:
         Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                _hearderBlock,
                _middleBlock,
                _boottomBlock
              ],
            ),
          ),
      
    );

  }

  //头部
  Widget get _hearderBlock {
    return Container(
      padding: EdgeInsetsDirectional.only(bottom: 10),
      child: Row(
        children: <Widget>[

          //图片
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
            
            image: DecorationImage(
              image: NetworkImage('https://img.alicdn.com/imgextra/i2/374826388/O1CN01yRhGml1x3kZNimzyU_!!374826388.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(4)
            
            ),
          ),

          //价格
          Expanded(
            child: Container(
            padding: EdgeInsetsDirectional.only(start: 8),
            child:  Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsetsDirectional.only(bottom: 6),
                  child: Text('￥100',style: TextStyle(color: Colors.deepOrange,fontSize: 16,fontWeight: FontWeight.bold),),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsetsDirectional.only(bottom: 6),
                  child: Text('库存666件',style: TextStyle(color: Colors.grey,fontSize: 12),),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsetsDirectional.only(bottom: 6),
                  child: Text('24:00 前付款，预计7月2送达',style: TextStyle(color: Colors.black,fontSize: 14),),
                )
              ],
            ),
          ),
          )

        ],
      ),

    );
  }
 
  //分类属性选择
  Widget get _middleBlock {
    return
      Expanded(
        child: ListView(
          children: <Widget>[
             Container(
               padding: EdgeInsetsDirectional.only(top:10,bottom: 10),
               decoration: BoxDecoration(
                 border: Border(top: BorderSide(color: Colors.black12))
               ),
               child: Text('颜色选择',style: TextStyle(color: Colors.black,fontSize: 14),),
             ),
             Row(
               children: _getSmallContainer(yfcolors),
             ),
             Container(
               padding: EdgeInsetsDirectional.only(top:10,bottom: 10),
              
               child: Text('尺码选择',style: TextStyle(color: Colors.black,fontSize: 14),),
             ),
             Row(
               children: _getSmallContainer(yfsize),
             ),
          ],
        ),
      );
     
    
  }

  //加入购物车，付款
  Widget get _boottomBlock {
    return Container(
      child: Row(
        children: <Widget>[
           Expanded(
             flex: 2,
             child: InkWell(
               onTap: (){},
               child: Container(
                 height: 36,
                 alignment: Alignment.center,
                 decoration: BoxDecoration(
                   color: Colors.orange,
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(4),
                     bottomLeft: Radius.circular(4)
                   )
                 ),
                 child: Text('加入购物车',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
               ),
             ),
           ),
            Expanded(
             flex: 2,
             child: InkWell(
               onTap: (){},
               child: Container(
                 alignment: Alignment.center,
                 height: 36,
                 decoration: BoxDecoration(
                   color: Colors.red,
                   borderRadius: BorderRadius.only(
                     topRight: Radius.circular(4),
                     bottomRight: Radius.circular(4)
                   )
                 ),
                 child: Text('购买',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
               ),
             ),
           )
        ],
      ),
    );
  }

  //灰色小方块、主要用于参数选择
  List<Widget> _getSmallContainer(List<String> list){
    List<Widget> items = new  List<Widget>();
    list.forEach((val){
      items.add(
        
        Container(
          margin: EdgeInsetsDirectional.only(end:10),
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(4)
          ),
      
          child: Text(val,style: TextStyle(color: Colors.black,fontSize: 12),),
        )

      );
    });
    return items;
  }




}