import 'package:flutter/material.dart';
import 'package:world_fart/gallery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => new MyHomePage(),
        '/gallery': (BuildContext context) => new Gallery(),
        //'/gallery_detail': (BuildContext context) => new GalleryDetail(),jk
        //'/quiz': (BuildContext context) => new Quiz()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("タイトル"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '世界のオナラ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 50.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
        ButtonTheme(
          minWidth: 100.0,
          height: 40.0,
            child:RaisedButton(
              child: const Text('ギャラリー'),
              color: Colors.white,
              shape: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("/gallery") ;
              },
            )
        ),
            Padding(
              padding: EdgeInsets.all(5.0),
            ),
            ButtonTheme(
                minWidth: 100.0,
                height: 40.0,
                child:RaisedButton(
                  child: const Text('クイズ'),
                  color: Colors.white,
                  shape: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/quiz") ;
                  },
                )
            )
          ],
        ),
      ),


    );
  }
}
