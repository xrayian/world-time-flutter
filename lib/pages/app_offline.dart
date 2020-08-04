import 'package:flutter/material.dart';

class AppOffline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "You're Offline!",
                style: TextStyle(
                    fontSize: 22, color: Colors.grey[200], letterSpacing: 2.0),
              ),
              SizedBox(height: 50),
              FlatButton.icon(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/");
                  },
                  icon: Icon(
                    Icons.autorenew,
                    color: Colors.grey[200],
                  ),
                  color: Colors.blueAccent[100],
                  label: Text(
                    "Refresh",
                    style: TextStyle(color: Colors.grey[200]),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
