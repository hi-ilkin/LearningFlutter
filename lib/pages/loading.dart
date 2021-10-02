import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime(String city) async {
    Response response = await get(
        Uri.parse("http://worldtimeapi.org/api/timezone/Europe/$city"));
    Map data = jsonDecode(response.body);

    data.forEach((key, value) {
      print('$key : $value');
    });

    DateTime now = DateTime.parse(data['datetime']);
    print('Current time in $city : $now');
  }

  @override
  initState() {
    super.initState();
    getTime('London');
  }
    String dropdownValue = 'Istanbul';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
          child: DropdownButton(
        value: dropdownValue,
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
            getTime(dropdownValue);
          });
        },
        items: <String>['Istanbul', 'Stockholm', 'London', 'Riga']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      )),
    );
  }
}
