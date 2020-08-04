import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  void cacheImage(AssetImage image) async {
    await precacheImage(image, context);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      data = ModalRoute.of(context).settings.arguments;
    }
    AssetImage bgImage;
    Color accentColor;
    Color textColor;
    ColorFilter themeColorFilter;
    Color themeIconColor;
    switch (data['period']) {
      case "Morning":
        bgImage = AssetImage("assets/images/morning.jpg");
        themeIconColor = Colors.grey;
        accentColor = Colors.black;
        break;
      case "Noon":
        bgImage = AssetImage("assets/images/noon.jpg");
        textColor = Colors.grey[100];
        themeIconColor = Colors.grey[900];
        accentColor = Colors.amberAccent;
        break;
      case "Afternoon":
        bgImage = AssetImage("assets/images/afternoon.jpg");
        textColor = Colors.grey[800];
        accentColor = textColor;
        themeIconColor = Colors.blueGrey[100];
        break;
      case "Evening":
        bgImage = AssetImage("assets/images/evening.jpg");
        accentColor = Colors.black45;
        textColor = Colors.black87;
        break;
      case "Night":
        bgImage = AssetImage("assets/images/night.jpg");
        themeColorFilter = ColorFilter.mode(Colors.black, BlendMode.lighten);
        textColor = Colors.white;
        accentColor = Colors.white;
        themeIconColor = Colors.red[600];
        break;
      case "Midnight":
        bgImage = AssetImage("assets/images/midnight.png");
        textColor = Colors.grey[300];
        accentColor = textColor;
        themeIconColor = Colors.black;
        break;
    }
    cacheImage(bgImage);
    return Scaffold(
      backgroundColor: accentColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          dynamic newData;
          newData = await Navigator.pushNamed(context, '/continent');
          if (newData != null) {
            setState(() {
              data = newData;
            });
          }
        },
        child: Icon(
          Icons.edit_location,
          color: themeIconColor,
          size: 32,
        ),
        elevation: 2,
        tooltip: "Change Location",
        backgroundColor: accentColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: themeColorFilter,
              image: bgImage,
              fit: BoxFit.fitHeight),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(data['location'],
                    style: TextStyle(
                      fontSize: 30,
                      color: textColor,
                      letterSpacing: 2.0,
                    )),
                Text(
                  data['country'],
                  style: TextStyle(
                    fontSize: 18,
                    color: textColor,
                  ),
                ),
                SizedBox(height: 40),
                Text(data['time'],
                    style: TextStyle(
                      fontSize: 40,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    )),
                //SizedBox(height: 5),
                Text(data['period'],
                    style: TextStyle(
                      fontSize: 20,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    )),
                SizedBox(height: 40),
                Text(data['date'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: textColor,
                      letterSpacing: 2,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
