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
    print('day time at home: ${data['isDayTime']}');
    bool isDayTime = data['isDayTime'];

    String bgImage = isDayTime ? 'day.png' : 'night.png';
    Color? bgColor = isDayTime ? Colors.lightBlue[400] : Color(0xE1240120);


    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/$bgImage'),
                      fit: BoxFit.cover
                  )
              ),
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
                        backgroundColor: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          location,
                          style: TextStyle(fontSize: 28.0, letterSpacing: 2.0),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      time,
                      style: TextStyle(fontSize: 66),
                    )
                  ],
                ),
      ),
    )));
  }
}
