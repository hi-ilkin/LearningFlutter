import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  // a function that returns delayed data
  void getData() async {
    // Without async and await , we won't wait for result of this
    String username = await Future.delayed(Duration(seconds: 3), () {
      print('First request completed');
      return 'Username';
    });

    // This one depends from the first request
    await Future.delayed(Duration(seconds: 2), () {
      print('Information about ${username}...');
    });
  }

  @override
  initState() {
    super.initState();
    getData();
    print('Because previous code is async, we run this before the function');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Choose location'),
        backgroundColor: Colors.blue[600],
      ),
      body: Text('Change location'),
    );
  }
}
