import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:io';

void main(){
    runApp(
        MaterialApp(
            home: HomePage(),
        )
    );
} 
/*
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(
          title: 'Syow test Demo'
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class ImageDemo extends StatelessWidget {
  @override
  
Widget build(BuildContext context) {
  // ...
  return DecoratedBox(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/Syow.jpg'),
        // ...
      ),
      // ...
    ),
  );
  // ...
}
}
*//*
class HomePage extends StatefulWidget{
    State<HomePage> createState(){
        return _HomePage() ;
    }
}*/

class GamePage extends StatelessWidget{
    Widget build(BuildContext context){
        return WillPopScope(
            onWillPop: () async => false,
            child: Container(
                color:Colors.purple,
                child: RaisedButton(
                        child: Text('離開'),
                        onPressed:(){
                            Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder:(context)=> HomePage() ),
                            ModalRoute.withName('/'),
                        );
                    }
                ),
            ),
        );
    }
}

class HomePage extends StatelessWidget{
    
    @override
    Widget build(BuildContext context){
        return WillPopScope(
            onWillPop: () async => false,
            child: Container(
                color: Colors.white,
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                            RaisedButton(
                                child: Text(
                                    '開始' ,
                                    style: TextStyle(
                                        fontSize:55.0 ,
                                    ) 
                                ),
                                onPressed: (){
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(builder:(context)=> GamePage() ),
                                        ModalRoute.withName('/'),
                                    );
                                },
                                padding: EdgeInsets.fromLTRB(40,20,40,20),
                                color: Color.fromRGBO(175,0,200,1.0),
                                textColor: Colors.white ,
                                splashColor: Color.fromRGBO(150,0,175,1.0),
                                shape: StadiumBorder(),
                            ),
                            RaisedButton(
                                child: Text(
                                    '紀錄' ,
                                    style: TextStyle(
                                        fontSize:55.0 ,
                                    ) 
                                ),
                                onPressed: (){},
                                padding: EdgeInsets.fromLTRB(40,20,40,20),
                                color: Color.fromRGBO(0,175,200,1.0),
                                textColor: Colors.white ,
                                splashColor: Color.fromRGBO(150,0,175,1.0),
                                shape: StadiumBorder(),
                            ),
                            RaisedButton(
                                child: Text(
                                    '離開' ,
                                    style: TextStyle(
                                        fontSize:55.0 ,
                                    ) 
                                ),
                                onPressed: () => exit(0),
                                padding: EdgeInsets.fromLTRB(40,20,40,20),
                                color: Color.fromRGBO(200,0,0,1.0),
                                textColor: Colors.white ,
                                splashColor: Color.fromRGBO(150,0,0,1.0),
                                shape: StadiumBorder(),
                            ),
                        ]
                    ),
                ),
            ),
        );
    }
}
/*
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 100;
  
  void _addCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      if( _counter>=5 ){
          _counter-=5;
      }else{
          _counter++;
      }
    });
  }
  int rand_res(int win_counts){
      
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
            Icon(
                Icons.menu ,
            ),
            Icon(
                Icons.star,
            )
        ],
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        //title:Text('context'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Image(
                image: AssetImage('images/Syow.jpg'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addCounter,
        tooltip: 'add',
        //child: AssetImage('lib/ic_add.png'),
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/