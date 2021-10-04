import 'package:demo2/services/world_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  initState() {
    super.initState();
    initializeTime();
  }

  String time = 'loading';

  void initializeTime() async {
    WorldTime timeInstance =
        new WorldTime(location: 'Barbados', flag: '', url: 'America/Barbados');
    await timeInstance.getTime();
    setState(() {
      time = timeInstance.time;
    });

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': timeInstance.location,
      'flag': timeInstance.flag,
      'time': timeInstance.time,
      'isDayTime': timeInstance.isDayTime
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpinKitFadingCube(size: 50, color: Colors.blue[600]),
    );
  }
}
