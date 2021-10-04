import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time = '';
  String flag;
  String url;
  bool isDayTime = false;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    Response response = await get(
        Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
    Map data = jsonDecode(response.body);

    DateTime now = DateTime.parse(data['datetime'].substring(0, 26));
    print('Data : $data');
    this.time = DateFormat.Hms().format(now);
    this.isDayTime = now.hour > 7 && now.hour < 20;
  }
}
