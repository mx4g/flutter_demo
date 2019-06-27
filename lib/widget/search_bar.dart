import 'package:flutter/material.dart';
import 'package:flutter_demo/config/base_config.dart';
import 'package:flutter_demo/pages/search_page.dart';
import 'package:flutter_demo/util/navigator_util.dart';
import 'package:flutter_demo/widget/app_bar_container.dart';

class SearchBar extends StatefulWidget with PreferredSizeWidget {
 
  final double barHeight;
  final double elevation; //阴影
  final Widget leading;
  final String hintText;
  final IconData prefixIcon;
  final VoidCallback onEditingComplete;
  final bool normalSearch;
  final int inputBgColor;
  final int barBgColorl;
  final int borderColor; 
  final Color fontColor;
  final double fontSize;
  final double inputBoxHeight;

 

  SearchBar(
    {
      this.barHeight: 44.0,
      this.elevation: 0.5,
      this.leading,
      this.hintText: '搜索',
      this.onEditingComplete,
      this.normalSearch = true,
      this.prefixIcon=Icons.search,
      this.inputBgColor = 0xFFE6E6E6,
      this.barBgColorl = ColorConfig.appBarColor,
      this.borderColor = ColorConfig.grey3,
      this.fontColor = Colors.black38,
      this.fontSize = 16,
      this.inputBoxHeight = 34,
    });


  _SearchBarState createState() => _SearchBarState();

  @override
  Size get preferredSize => Size.fromHeight(barHeight);
}

class _SearchBarState extends State<SearchBar>  {
  TextEditingController _controller = new TextEditingController();
  bool _hasdeleteIcon = false;

  @override
  Widget build(BuildContext context) {
    return ! widget.normalSearch ? inputBox(context) : normalInputBox();
  }

  Widget normalInputBox(){

    return  appBarContainer(_normalInputBlock);
  }
 
  Widget inputBox(BuildContext context) {
 
    return appBarContainer(_inputBlock);
  
  }

  Widget  appBarContainer(contentBox){
    return AppBarContainer(
          height: widget.barHeight,
          actions: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsetsDirectional.only(top: 6,bottom: 6),
              width: MediaQuery.of(context).size.width,
              height: 44,
              color: Color(widget.barBgColorl),
              child: contentBox,
            )
          ],
        );
  }
  
  Widget get _normalInputBlock {

    return InkWell(
      onTap: (){
         _jumpToSearch();
      },
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child:Container(
              margin: EdgeInsetsDirectional.only(start: 16,end: 16),
              height: widget.inputBoxHeight,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsetsDirectional.only(start:5,top:2,end: 5),
                    child: Icon(
                        Icons.search,
                        size: 24,
                        color: widget.fontColor,
                    ),
                  ),
                  Text(
                    widget.hintText,style: TextStyle(color: widget.fontColor,fontSize: widget.fontSize),                 
                  )
                ],
              ),
            ) ,
          )
        ],
      ),
    );
  }
  
  Widget get _inputBlock {

    return
      Row(
        children: <Widget>[
         
          //BackBtn 返回按钮
          _backBtn,

          //inputBox 
          _inputBox,
          
          //searchBtn
          _searchBtn
        
        ],
      ); 
    
    
  }
 
  Widget get _input {
 
    return TextField(
      autofocus: true,
      controller: _controller,
      maxLines: 1,
      
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: widget.fontColor,
          fontSize: widget.fontSize,
          
        ),
         
      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      filled: true,
      fillColor: Colors.transparent,
      border: InputBorder.none,
      ),
      
      onChanged: (str) {
        setState(() {
          if (str.isEmpty) {
            _hasdeleteIcon = false;
          } else {
            _hasdeleteIcon = true;
          } 
        });
        },

      onEditingComplete: widget.onEditingComplete 
      );
     
       
      
  }

  Widget get _inputBox {

    return  Expanded(
      flex: 1,
      child:Container(
        margin: EdgeInsetsDirectional.only(start: 8,end: 8),
        height: widget.inputBoxHeight,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: <Widget>[

            //searchIcon
            Padding(
              padding: EdgeInsetsDirectional.only(start:5,top:3,end: 5),
              child: Icon(
                  Icons.search,
                  size: 24,
                  color: widget.fontColor,
              ),
            ),

            //input
            Expanded(
              flex: 1,
              child: _input,
            ),

            //inputDeleteBtn
            Padding(
              padding: EdgeInsetsDirectional.only(end:5),
              child: _hasdeleteIcon ? _deleteIcon : Text('')
            ),

          ],
        ),
      ) ,
    );

  }
  
  Widget get _searchBtn {
 
    return Container(
        margin: EdgeInsetsDirectional.only(end: 10),
        
        width: 50,
        height: 30,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.orange, Colors.red]),
          borderRadius: BorderRadius.circular(34)

        ),
        child: FlatButton (
         padding:EdgeInsets.all(0),
         onPressed: (){

         },
         child: Text("搜索",style: TextStyle(color: Colors.white,fontSize: 14),),
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(34)
         ),
        ),
        
     );
  }
  
  Widget get _deleteIcon {
    
    return new GestureDetector(
      onTap: (() {
      
        _controller.text = '';
        _hasdeleteIcon = false;
     
      }),
      child: Icon(
        Icons.clear,
        size: 18.0,
        color: widget.fontColor,
      ));
                     
  } 
  
  Widget get _backBtn {

    return 
       Container(
        margin: EdgeInsetsDirectional.only(start: 10),
        width: 34,
        height: 34,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(34)

        ),
        child: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black45,
            size: 16,
          ),
        ),
      );
  }
  
  //跳转搜索页面
  void _jumpToSearch() {
    NavigatorUtil.push(
      context,
      SearchPage()
    );
  }

}

 


 

 
