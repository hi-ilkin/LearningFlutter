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

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Text('Hello'),
          TextButton(
            onPressed: () {},
            child: Text('Click me'),
            style: TextButton.styleFrom(
                primary: Colors.amber[300],
                backgroundColor: Colors.red
            ),
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(20),
            child: Text('a container')
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        backgroundColor: Colors.red,
        onPressed: () => {},
      ),
    );
  }
}
