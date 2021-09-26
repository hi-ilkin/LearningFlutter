import 'package:demo2/pages/choose_location.dart';
import 'package:demo2/pages/home.dart';
import 'package:demo2/pages/loading.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/', // use this to override first route at startup
      routes: {
        // context basically says us where are we at widget tree
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation()
      },
    ));
