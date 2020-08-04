import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String url;
  String time;
  String city;
  String country;
  String date;
  String period;
  bool isDaytime;

  WorldTime({this.url, this.country});
  String getCity() {
    if (url.split("/").length == 3) {
      city = url.split("/")[2].replaceAll("_", " ");
    } else {
      city = url.split("/")[1].replaceAll("_", " ");
    }
    return city;
  }

  String getPeriod(int hour) {
    if (hour >= 6 && hour <= 10) {
      return "Morning";
    } else if (hour >= 11 && hour <= 15) {
      return "Noon";
    } else if (hour >= 16 && hour <= 18) {
      return "Afternoon";
    } else if (hour >= 19 && hour <= 20) {
      return "Evening";
    } else if (hour >= 21 && hour <= 23) {
      return "Night";
    } else {
      return "Midnight";
    }
  }

  String identifier() => "${this.getCity()}, ${this.country}";

  Future<Map> fetchTime() async {
    try {
      Response response =
          await get("http://worldtimeapi.org/api/timezone/$url");
      Map data = jsonDecode(response.body);
      DateTime now = DateTime.parse(data["utc_datetime"]);
      if (data['utc_offset'].substring(0, 1) == '+') {
        now = now.add(Duration(
            hours: int.parse(data["utc_offset"].substring(1, 3)),
            minutes: int.parse(data["utc_offset"].substring(4, 6))));
      } else {
        now = now.subtract(Duration(
            hours: int.parse(data["utc_offset"].substring(1, 3)),
            minutes: int.parse(data["utc_offset"].substring(4, 6))));
      }
      this.time = DateFormat.jm().format(now);
      this.date = DateFormat.yMMMMd('en_US').format(now);
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      period = getPeriod(now.hour);
      city = url.split("/")[1].replaceAll("_", " ");
      return {
        "location": this.getCity(),
        "time": time,
        "date": date,
        "isDaytime": isDaytime,
        "country": country,
        "period": period,
        "err": null
      };
    } catch (e) {
      print("error :$e");
      return {
        "err": e,
      };
    }
  }
}
