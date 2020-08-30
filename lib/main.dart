import 'package:coliamder/next_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String text = '次へ';
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("犀川のテストApp"),
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
      body:Container(
        width: double.infinity,
        child:GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(5, (index) {
            return Column(
              children: [
                Expanded(
                  child:Image.network('https://l2mu2z27b5.execute-api.ap-northeast-1.amazonaws.com/prod'),
                ),
                Text('画像 $index')
              ],
            );
          }),
        ),
        ),
      /*body: Container(
        width:double.infinity,

        /*
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network('https://l2mu2z27b5.execute-api.ap-northeast-1.amazonaws.com/prod'),
            RaisedButton(
              child: Text(text),
              onPressed: () async{
                //ここに押したら反応するコードを書く
                //画面遷移のコードを書く
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NextPage('ジーコさん')
                  ),
                );
                text = result;
                print(result);
              },
            ),
          ],
        ),
        */
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    */
    );
  }
}
