import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        appBar: AppBar(
          title: Text('ギャラリー'),
        ),
        body: ListView(
            children: [
              _menuItem("日本",Image.asset("images/japan.gif")) ,
              _menuItem("韓国",Image.asset("images/korea.gif")),
              _menuItem("中国",Image.asset("images/china.gif")),
            ]
        ),
    );
  }

  Widget _menuItem(String title, Image image) {
    return GestureDetector(
      child:Container(
          padding: EdgeInsets.all(8.0),
          decoration: new BoxDecoration(
              border: new Border(bottom: BorderSide(width: 1.0, color: Colors.grey))
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child:image,
              ),
              Text(
                title,
                style: TextStyle(
                    color:Colors.black,
                    fontSize: 18.0
                ),
              ),
            ],
          )
      ),
      onTap: () {
        print("onTap called.");
      },
    );
  }
}


