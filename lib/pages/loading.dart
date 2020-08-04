import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTime() async {
    WorldTime instance = WorldTime(url: "Asia/Dhaka", country: "Bangladesh");
    dynamic data = await instance.fetchTime();
    if (data["err"] == null) {
      Navigator.pushReplacementNamed(context, "/home", arguments: data);
    } else {
      Navigator.pushReplacementNamed(context, "/offline");
    }
  }

  @override
  void initState() {
    setupWorldTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: SpinKitThreeBounce(
            color: Colors.white,
            size: 80.0,
          ),
        ),
      ),
    );
  }
}
