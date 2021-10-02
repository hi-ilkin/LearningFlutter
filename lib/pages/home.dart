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
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 120, 8, 0),
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
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data['location'],
                  style: TextStyle(fontSize: 28.0, letterSpacing: 2.0),
                )
              ],
            ),
            SizedBox(height: 20,),
            Text(
              data['time'],
              style: TextStyle(fontSize: 66),

            )
          ],
        ),
      ),
    ));
  }
}
