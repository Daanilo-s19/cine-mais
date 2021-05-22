import 'package:flutter/material.dart';

class ManageCinemaPage extends StatefulWidget {
  @override
  _ManageCinemaPageState createState() => _ManageCinemaPageState();
}

class _ManageCinemaPageState extends State<ManageCinemaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.album),
              title: Text('One-line with trailing widget'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.album),
              title: Text('One-line with trailing widget'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.album),
              title: Text('One-line with trailing widget'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
              trailing: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
    );
  }
}
