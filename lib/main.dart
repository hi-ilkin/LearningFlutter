import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        backgroundColor: Colors.red[600],
        centerTitle: true,
      ),

      body: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Image.asset('assets/parrot-1.jpg')
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('$count')
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.pink,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 2,
            child: TextButton(
              onPressed: () {
                setState(() {
                  count -= 1;
                });
              },
                child: Container(
                  padding: EdgeInsets.all(30.0),
                  color: Colors.yellow,
                  child: Text('-'),
            ),
            )


          )
        ],

      ),
      floatingActionButton: FloatingActionButton(
        child: Text('add'),
        backgroundColor: Colors.red,
        onPressed: () => {
          setState(() {
            count += 1;
          })
        },
      ),
    );
  }
}
