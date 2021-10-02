import 'dart:convert';

import 'package:http/http.dart';

class WorldTime {
  String location;
  String time = '';
  String flag;
  String url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    Response response = await get(
        Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
    Map data = jsonDecode(response.body);

    this.time = data['datetime'].toString();
  }
}
