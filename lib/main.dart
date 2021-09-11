import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
          backgroundColor: Colors.red[600],
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            "Hello ninjas!",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
            ),

          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text('click'),
          backgroundColor: Colors.green,
          onPressed: () => {},
        ),
      ),

    ));
