import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/comment_page.dart';
import 'package:flutter_demo/pages/detail_page/swiper_detail_page.dart';
import 'package:flutter_demo/util/bar_util.dart';
import 'package:flutter_demo/util/navigator_util.dart';
import 'package:flutter_demo/widget/app_bar_container.dart';
 

class DetailPage extends StatefulWidget {
  final int id;
  DetailPage({
    this.id
  });
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  var images = [
        'https://img.alicdn.com/imgextra/i2/374826388/O1CN01yRhGml1x3kZNimzyU_!!374826388.jpg',
        'https://img.alicdn.com/imgextra/i1/374826388/O1CN01f0q3y61x3kZRmsItT_!!374826388.jpg',
        'https://img.alicdn.com/imgextra/i3/374826388/O1CN01DyzJ9s1x3kZQ12yO2_!!374826388.jpg',
        'https://img.alicdn.com/imgextra/i3/374826388/O1CN01MCLUWg1x3kZRmvrQv_!!374826388.jpg'
        
       ];

  void  _jumpToCommentPage() {

     NavigatorUtil.push(
        context,
        CommentPage()
     );

  }     

  @override
  Widget build(BuildContext context) {
    var swiper = SwiperDetailPage(bannerList: images);    
    
    return Scaffold(
      appBar:  _appBar,

      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: swiper.init(),
          ),
          
          //价格、标题
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Color(0xffeeeeee),width: 5),bottom: BorderSide(color: Color(0xffeeeeee),width: 5)),
              
            ),
            child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: Text('￥2999',style: TextStyle(color: Colors.deepOrange),),
                  )

                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: 
                      Padding(
                        padding: EdgeInsetsDirectional.only(start: 6,bottom: 6,end: 6),
                        child: Text('小八同学2019春季新款私服推荐女小女人粉色圆领长袖显白显胸',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                       ),
                  )
                ],
              )
            ],
          ),
          ),
          
          //发货、服务、选择、面料
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Color(0xffeeeeee),width: 5),bottom: BorderSide(color: Color(0xffeeeeee),width: 5)),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(6),
                        child: Text('发货',style: TextStyle(color: Colors.black38,fontSize: 14),),
                      ),
                    Padding(
                        padding: EdgeInsets.all(6),
                        child: Text('浙江发货',style: TextStyle(color: Colors.black,fontSize: 14),),
                      )
                    
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(6),
                        child: Text('服务',style: TextStyle(color: Colors.black38,fontSize: 14),),
                      ),
                    Padding(
                        padding: EdgeInsets.all(6),
                        child: Text('7天无理由退货',style: TextStyle(color: Colors.black,fontSize: 14),),
                      )
                    
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(6),
                        child: Text('选择',style: TextStyle(color: Colors.black38,fontSize: 14),),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(6),
                          child: Text('选择 尺码，主要颜色',style: TextStyle(color: Colors.black,fontSize: 14),),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsetsDirectional.only(end: 10),
                                alignment: Alignment.center,
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(5)

                                ),
                                child: Text('S',style: TextStyle(fontSize: 12),),
                              ),
                              Container(
                                margin: EdgeInsetsDirectional.only(end: 10),
                                alignment: Alignment.center,
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(5)

                                ),
                                child: Text('M',style: TextStyle(fontSize: 12),),
                              ),
                              Container(
                                margin: EdgeInsetsDirectional.only(end: 5),
                                alignment: Alignment.center,
                                width: 100,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(5)

                                ),
                                child: Text('目前就只有这两款',style: TextStyle(fontSize: 12),),
                              ),
                            ],
                          )
                        )
                      ],
                    ),
                  ],
                ),

                Row(
                  children: <Widget>[
                     Padding(
                        padding: EdgeInsets.all(6),
                        child: Text('参数',style: TextStyle(color: Colors.black38,fontSize: 14),),
                    ),
                    Padding(
                        padding: EdgeInsets.all(6),
                        child: Text('面料 尺码...',style: TextStyle(color: Colors.black,fontSize: 14),),
                     )
                  ],
                )

                
              ],
            )
          ),
          
          //评论
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Color(0xffeeeeee),width: 5),bottom: BorderSide(color: Color(0xffeeeeee),width: 5)),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(6),
                        child: Text('宝贝评价(101)',style: TextStyle(color: Colors.black,fontSize: 14),),
                      ),
                    
                    Expanded(
                      child: Row(
                      children: <Widget>[
                       Expanded(
                         child: InkWell(
                           onTap:  _jumpToCommentPage,
                           
                           child: Container(
                            padding: EdgeInsets.all(6),
                            alignment: Alignment.centerRight,
                            child: Text('查看全部 >',style: TextStyle(color: Colors.deepOrange,fontSize: 14),),
                            ),
                         )
                       )
                      ],
                    ),
                    )
                    
                  ],
                ),
              ],
            ),
          ), 
       
          //宝贝详情
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Color(0xffeeeeee),width: 5),bottom: BorderSide(color: Color(0xffeeeeee),width: 5)),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: 30,
                  alignment: Alignment.center,
                  child: Text('宝贝详情',style: TextStyle(color: Colors.black),),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                     Image.network('https://img.alicdn.com/imgextra/i3/374826388/O1CN019dLpqP1x3kZQfg120_!!374826388.jpg'),
                     Image.network('https://img.alicdn.com/imgextra/i4/374826388/O1CN018feoTt1x3kZQfnSz0_!!374826388.jpg'),
                     Image.network('https://img.alicdn.com/imgextra/i4/374826388/O1CN01UGdQvg1x3kZRXtF1w_!!374826388.jpg')
                       
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get _appBar{
   
    return AppBarSetting(title:'详情').arrowBack(context);
  }
}