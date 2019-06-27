import 'package:flutter/material.dart';
import 'package:flutter_demo/widget/cached_image.dart';
import 'package:flutter_demo/widget/swiper_block.dart';

class SwiperDetailPage {
  final List<String>  bannerList;
  final bool isNumberPagination;
  SwiperDetailPage({
    this.bannerList,
    this.isNumberPagination = true,
  });

 
  Widget init() {

    return SwiperBlock(
      isNumberPagination: isNumberPagination,
      count: bannerList.length,
      itemBuilder: _item,
    );
  }

 

  Widget _item(BuildContext context, int index){
   
    return InkWell(
    
      child: CachedImage(
        imageUrl: bannerList[index],
        fit: BoxFit.fitWidth,
      ),
    );

  }
   

}