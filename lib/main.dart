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
      body: Center(
        // getting image from network
        // child: Image(
        //   image: NetworkImage('https://images.unsplash.com/photo-1526336024174-e58f5cdd8e13?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
        // ),

        // getting image from assets folder
        // child: Image(
        //   image: AssetImage('assets/cat-1.jpg'),
        // ),

        // Shortcut
        child: Image.asset('assets/parrot-1.jpg'),

      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        backgroundColor: Colors.red,
        onPressed: () => {},
      ),
    );
  }
}
