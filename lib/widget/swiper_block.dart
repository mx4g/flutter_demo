import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperBlock extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final int count;
  final bool isNumberPagination;
  SwiperBlock({
    this.itemBuilder,
    this.count,
    this.isNumberPagination = false
  });

  @override
  Widget build(BuildContext context) {
    return Swiper(
      autoplay: true,
      loop: true,
    
      pagination: new SwiperPagination(
        alignment: isNumberPagination ? Alignment.bottomRight : Alignment.bottomCenter,   
        builder: _pagination
      ),

      itemCount: count,
      itemBuilder: itemBuilder,
    );

  }

  SwiperPlugin get _pagination {
 
    if(isNumberPagination){
      return  FractionPaginationBuilder(
        color: Colors.black38,
        activeColor: Colors.black38, 
        fontSize: 16,
        activeFontSize: 16      
      );
    }else{
      return DotSwiperPaginationBuilder(
        color: Colors.white24,
        activeColor: Colors.black54,
      );
    }
      
  }
}