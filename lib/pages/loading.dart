import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getUserId() async {
    Response response =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    Map mapData = jsonDecode(response.body);
    print(mapData);
    print(mapData['userId']);
  }

  @override
  initState() {
    super.initState();
    getUserId();
    print('Because previous code is async, we run this before the function');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
