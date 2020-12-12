import 'package:flutter/material.dart';
import 'package:world_fart/config.dart';

class Gallery extends StatelessWidget {
  void _navigateToNext(BuildContext context,String text) {
    // 次画面へ遷移して値を渡す
    Navigator.push(context, new MaterialPageRoute(builder: (context) =>
    new GalleryDetail(text: text)
    ));
  }

  @override
  Widget build(BuildContext context) {
  const countries = Config.countries;
    return
       Scaffold(
        appBar: AppBar(
          title: Text('ギャラリー'),
        ),
        body: ListView.builder(
          itemCount: countries.length,
          itemBuilder: (BuildContext context, int index) {
            String key = countries.keys.elementAt(index);
            return Padding(
              padding: EdgeInsets.all(2.0),
              child:
              _menuItem(context,"$key", Image.asset("images/${countries[key]}.gif")),
            );
          },
        ),
    );}

  Widget _menuItem(BuildContext context,String title, Image image) {
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
        _navigateToNext(context,title);
      },
    );
  }
}

class GalleryDetail extends StatelessWidget {

  final String text;
  GalleryDetail({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Detail screen'),
        ),
        body: new Center(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text(
                        '$text',
                        style: new TextStyle(
                            fontSize: 50.0
                        ),
                      )
                  ),
                  new RaisedButton(
                      child: new Text('Back'),
                      textColor: Colors.white,
                      color: Colors.lightBlue,
                      onPressed: () => Navigator.pop(context)
                  )
                ]
            )
        )
    );
  }
}


/*
//下記、保存用その１
import 'Dart:io' as io;
// for a file
io.File(path).exists();
// for a directory
io.Directory(path).exists();

//下記、保存用その２
ImageProvider getImageProvider(File f) {
  return f.existsSync()
      ? FileImage(f)
      : const AssetImage('images/fallback.png');
}

 */