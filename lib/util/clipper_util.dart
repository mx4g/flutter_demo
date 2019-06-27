import 'package:flutter/material.dart';
 

//下曲线
class BottonClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    // 路径
    var path = Path();
    // 设置路径的开始点
    path.lineTo(0, 0);
    path.lineTo(0, size.height-50);

    // 设置曲线的开始样式
    var firstControlPoint = Offset(size.width / 2, size.height);
    // 设置曲线的结束样式
    var firstEndPont = Offset(size.width, size.height - 50);
    // 把设置的曲线添加到路径里面
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
     firstEndPont.dx, firstEndPont.dy);

    // 设置路径的结束点
     path.lineTo(size.width, size.height-50);
     path.lineTo(size.width, 0);

     path.close();
     // 返回路径
     return path;
  }
  
 
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}


//上曲线
class TopClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    var firstControlPoint = Offset(size.width / 4, size.height - 10);
    var firstPoint = Offset(size.width / 2, size.height - 10);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint =
        Offset(size.width - (size.width / 4), size.height - 10);
    var secondPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }
  
 
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}