import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
        backgroundColor: Colors.red[600],
        centerTitle: true,
      ),

      // Container example
      // body: Container(
      //   padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      //   margin: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
      //   color: Colors.grey[400],
      //   child: Text('hello'),
        // ),
        body: Padding(
          padding: EdgeInsets.all(50.0),
          child: Text('hello'),
        ),


      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        backgroundColor: Colors.red,
        onPressed: () => {},
      ),
    );
  }
}
