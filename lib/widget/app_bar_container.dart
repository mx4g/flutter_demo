import 'package:flutter/material.dart';

class AppBarContainer extends StatelessWidget with PreferredSizeWidget {
  final double height;
  final Widget title;
  final bool centerTitle;
  final List<Widget> actions;
  final Color backgroundColor;
  final double elevation;
  final Widget leading;

  AppBarContainer({
    this.height = 44,
    this.title,
    this.centerTitle = true,
    this.actions,
    this.backgroundColor,
    this.elevation = 0.5,
    this.leading
  });

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      title: title,
      centerTitle: centerTitle,
      actions: actions,
      backgroundColor: backgroundColor,
      elevation: elevation, 
      leading: leading,
    
    ) ;
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
