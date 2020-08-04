import 'package:flutter/material.dart';
import 'package:world_time/services/search_delegate.dart';

List continents = [
  "Africa",
  "America",
  "Asia",
  "Atlantic",
  "Australia",
  "Europe",
  "Indian",
  "Pacific"
];

class ChooseContinent extends StatelessWidget {
  void getMap(BuildContext _context, String _location, [Map _args]) async {
    dynamic returnedMap;
    returnedMap =
        await Navigator.pushNamed(_context, _location, arguments: _args);
    if (returnedMap != null) {
      Navigator.pop(_context, returnedMap);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          // action button
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              var map = await showSearch(
                  context: context, delegate: CustomSearchDelegate());
              if (map != null) {
                Navigator.pop(context, map);
              }
            },
          ),
        ],
        title: Text("Choose Continent"),
        centerTitle: true,
        elevation: 0,
      ),
      //backgroundColor: Colors.blueAccent,
      body: ListView.builder(
        itemCount: continents.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title:
                  Text(continents[index], style: TextStyle(letterSpacing: 0.3)),
              onTap: () {
                getMap(context, "/location", {
                  "continent": continents[index],
                });
              },
            ),
          );
        },
      ),
    );
  }
}
