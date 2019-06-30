import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/detail_page.dart';
import 'package:flutter_demo/util/navigator_util.dart';
import 'package:flutter_demo/widget/cached_image.dart';
import 'package:flutter_demo/widget/swiper_block.dart';

class SwiperCategory {
  final List<String>  bannerList;
  SwiperCategory({
    this.bannerList
  });

 
  Widget init() {

    return SwiperBlock(
      count: bannerList.length,
      itemBuilder: _item,
    );
  }

 

  Widget _item(BuildContext context, int index){
   
    return InkWell(
      onTap: (){
         NavigatorUtil.push(context, 
           DetailPage(id: index)
         );
      },
      child: CachedImage(
        imageUrl: bannerList[index],
        fit: BoxFit.fill,
      ),
    );

  }
   

}