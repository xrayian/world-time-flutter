import 'package:flutter/material.dart';
import 'package:world_time/pages/app_offline.dart';
import 'package:world_time/pages/choose_continent.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';

void main() {
  runApp(
    MaterialApp(
        title: "World Time",
        theme: ThemeData(
            fontFamily: "Karla",
            hintColor: Colors.white,
            cursorColor: Colors.white,
            appBarTheme: AppBarTheme(
              elevation: 0,
            ),
            textTheme: TextTheme(
              headline6: TextStyle(color: Colors.white),
            )),
        routes: {
          "/": (context) => Loading(),
          "/home": (context) => Home(),
          "/location": (context) => ChooseLocation(),
          "/continent": (context) => ChooseContinent(),
          "/offline": (context) => AppOffline(),
        }),
  );
}
