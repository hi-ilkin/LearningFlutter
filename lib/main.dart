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
        // Adding icon
        // child: Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.lightBlue,
        //   size: 50,
        // ),

        // Simple button
        // child: ElevatedButton(
        //   onPressed: () {
        //     print('Button clicked');
        //   },
        //   child: Text('CLick Me'),
        // )

        // ElevatedButton with icon and style
        // child: ElevatedButton.icon(
        //   onPressed: () {},
        //   label: Text('text me'),
        //   icon: Icon(
        //     Icons.chat,
        //   ),
        //   style: ElevatedButton.styleFrom(
        //     primary: Colors.amber,
        //   ),
        // )

        child: IconButton(
          onPressed: () {print('You clicked an icon button');},
          icon: Icon(Icons.alternate_email),
          color: Colors.amber
        )
      ),

      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        backgroundColor: Colors.red,
        onPressed: () => {},
      ),
    );
  }
}
