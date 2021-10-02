import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};


  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments as Map;
    String time = data['time'];
    String location = data['location'];
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(Icons.edit_location),
                label: Text('Change location'),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                ),
              ),

              Text('Time in $location : $time '),
            ],
          )
        )
    );
  }
}
