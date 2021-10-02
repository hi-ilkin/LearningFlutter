import 'package:demo2/services/world_time.dart';
import 'package:flutter/material.dart';

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
    WorldTime stockholmTime =
        new WorldTime(location: 'Stockholm', flag: '', url: 'Europe/Stockholm');
    await stockholmTime.getTime();
    setState(() {
      time = stockholmTime.time;
    });

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': stockholmTime.location,
      'flag': stockholmTime.flag,
      'time': stockholmTime.time
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
           child: Text(time),
    ));
  }
}
