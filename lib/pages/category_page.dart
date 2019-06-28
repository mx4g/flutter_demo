import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/config/base_config.dart';
import 'package:flutter_demo/pages/search_page.dart';
import 'package:flutter_demo/util/navigator_util.dart';
import 'package:flutter_demo/widget/image_container.dart';
import 'package:flutter_demo/widget/search_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'detail_page.dart';
import 'home_page/swiper_home_page.dart';

class CategoryPage extends StatefulWidget {
 
  _CategoryPageState createState() => _CategoryPageState();

}


class _CategoryPageState extends State<CategoryPage> {
                  
            
  var _leftMuenItem = [
        {'name':'爆品专区','id':'1', 
         'subItem':[
                    {'name':'苹果xsmax','pid':'1','image':'https://img12.360buyimg.com/n7/jfs/t1/4528/10/3590/153299/5b997bf5E4a513949/45ab3dd6c35d981b.jpg'},
                    {'name':'华为p30','pid':'1','image':'https://img13.360buyimg.com/n7/jfs/t1/11352/31/13456/324178/5c98c88dE9419c2ca/4be2efca1d9e2b38.jpg'},
                    {'name':'小米9','pid':'1','image':'https://img14.360buyimg.com/n7/jfs/t1/7860/24/15099/77884/5c6d0204Ee554f31f/4dc6d2a87f2f6e0a.jpg'},
                    {'name':'一加7pro','pid':'1','image':'https://img11.360buyimg.com/n7/jfs/t30040/100/1290632710/208879/1f7e2225/5cdd0d92Nb78895a6.jpg'},
                    {'name':'三星S10','pid':'1','image':'https://img14.360buyimg.com/n7/jfs/t1/25195/38/8303/214452/5c74b0fdE6988f08a/28427e48e5445f77.jpg'},
                    {'name':'oppo reno','pid':'1','image':'https://img10.360buyimg.com/n7/jfs/t1/33271/10/13621/160063/5d023ba7E84da5825/ff95cf4a188ac8cc.jpg'},
                    {'name':'vivo x27','pid':'1','image':'https://img11.360buyimg.com/n7/jfs/t1/63349/8/1921/198363/5d033fdbE0d0e191d/3941ea1bd0b40557.jpg'},                        
                  ]
        },
        {'name':'服装配饰','id':'2',
         'subItem':[
                     {'name':'足木鸟衬衫','pid':'2','image':'https://img12.360buyimg.com/n7/jfs/t20338/6/821311267/554720/fcb121da/5b18cb16N0c703dba.jpg'},
                   ]
        },
        {'name':'居家好物','id':'3',
         'subItem':[
                      {'name':'居家拖鞋','pid':'3','image':'https://img14.360buyimg.com/n7/jfs/t1/52677/33/1695/219866/5cfb1a2dE6f7faa3b/bf8cd7e6256e11f9.jpg'},
                   ]
        },
        {'name':'家用电器','id':'4',
         'subItem':[
                      {'name':'飞利浦破壁机','pid':'4','image':'https://img12.360buyimg.com/n7/jfs/t22237/16/385295505/95140/1630612e/5b0be484N5ab4c2ec.jpg'},
                   ]
        },
        
      ];

   
  int _leftBtnCurrentIndex = 0;

  int _grey2 = ColorConfig.grey2;
  int _grey3 = ColorConfig.grey3;

  int _fontColor = ColorConfig.fontColor2;
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: _appBar,
      backgroundColor: Color(_grey2),
      body: Row(
        children: <Widget>[
          _leftMenu,
          _rightMenu
        ],
      ),
    );
  }

  
  /*搜索栏*/
  Widget get _appBar {

    return SearchBar(); 

  }

  Widget get _leftMenu {
    return Container(
      width: ScreenUtil().setWidth(187),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          left: BorderSide(color: Color(_grey3)),
          right:  BorderSide(color: Color(_grey3),),
          )
      ),
      child: ListView.builder(
        itemCount: _leftMuenItem.length,
        itemBuilder: (BuildContext context, int index){
          return InkWell(
            onTap: (){_changeLeftBtn(index);},
            child: Container(
                padding: EdgeInsetsDirectional.only(top: 16,bottom:16 ),
                decoration: BoxDecoration(
                  color: index  == _leftBtnCurrentIndex ? Color(_grey3) : Colors.white ,
                  border: Border(
                    bottom: BorderSide(color: Color(_grey3)),
                  )
                ),
                child: Container(
                  padding: EdgeInsetsDirectional.only(start: 12),
                  decoration: BoxDecoration(
                    border: Border(
                    left:  index  == _leftBtnCurrentIndex ? 
                             BorderSide(color: Colors.deepOrange,width: 4) :
                             BorderSide(color: Colors.white,width: 4)
                  )
                    
                  ),
                  child: Text(_leftMuenItem[index]['name'],style: TextStyle(fontSize: ScreenUtil().setSp(32),color: index  == _leftBtnCurrentIndex ? Colors.deepOrange : Color(_fontColor)),),
                ),
            ),
          );
        },
      ),
    );
  }

  Widget get _rightMenu {

    return Container(
      width: ScreenUtil().setWidth(563),
      padding: EdgeInsetsDirectional.only(start: 6,top: 6,end: 6),
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(children: <Widget>[
              _rightMenuBanner('类别名称logo'),
              _rightMenuSubBtn('')
            ],),
          )
        ],
      ),
    );

  }

  Widget  _rightMenuBanner(title) {
    var bannerList = ['http://img.alicdn.com/tps/i4/TB1N01ncRGw3KVjSZFwSuvQ2FXa.jpg_q90_.webp',
                       'https://img.alicdn.com/simba/img/TB1lEBtc8Cw3KVjSZFuSuwAOpXa.jpg',
                       'https://img.alicdn.com/simba/img/TB13RYlXBGw3KVjSZFwSuvQ2FXa.jpg',
                       'https://img.alicdn.com/simba/img/TB1HThXc.GF3KVjSZFoSuvmpFXa.jpg',
                       'https://img.alicdn.com/tfs/TB1WYMlcliE3KVjSZFMXXbQhVXa-520-280.jpg_q90_.webp'
                       ];
    var swiper = SwiperHomePage(bannerList: bannerList);   
    
    return Container(
      height: ScreenUtil().setHeight(180),
      padding: EdgeInsetsDirectional.only(bottom: 8),
      child: swiper.init(),
    );
  }

  Widget _rightMenuSubBtn(item){
    return 
      Wrap(
        spacing: 3,
        children: _rightSubMenuData(),
      );
    
  }

  List<Widget> _rightSubMenuData(){
    List<Widget> items = new List<Widget>();

    List subItem = _leftMuenItem[_leftBtnCurrentIndex]['subItem'];
  
    for(var i=0; i< subItem.length ;i++){
     
      items.add(_getItem(subItem[i]));
    }

    return items;
  }

  Widget _getItem(item){

    return  
      InkWell(
        onTap: (){

          NavigatorUtil.push(context, 
           DetailPage(id: 1) 
          );
        },
        child: ImageContainer(
          width: ScreenUtil().setWidth(155),
          height:  ScreenUtil().setHeight(155),
          title: item['name'],
          imageUrl: item['image'],
          maxLines: 1,
          ) 
        
     );
  }

  void _changeLeftBtn(int index){
    
    setState(() {
      _leftBtnCurrentIndex = index;
    });

  }

}