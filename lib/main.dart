import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Color _color = Colors.teal[400];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _color,
        body: SafeArea(
          bottom: false,
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.deepPurpleAccent,
                  backgroundImage: AssetImage('images/avatar.png'),
                  radius: 80,
                ),
                Text(
                  'Lashawn Fisher',
                  style: TextStyle(
                    fontFamily: 'Delius Unicase',
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontFamily: 'Bebas Neue',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 0,
                  child: Divider(
                    color: _color,
                  ),
                ),

// Hard Way To Do A list Tile

                Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          color: _color,
                        ),
                        SizedBox(
                          width: 31,
                        ),
                        Text(
                          '516 537 8968',
                          style: TextStyle(
                            wordSpacing: 2.5,
                            color: _color,
                            fontSize: 20,
                            fontFamily: 'Bebas Neue',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

// Hard Way To Do A list Tile

                Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: _color,
                    ),
                    title: Text(
                      'LytWorkShift@gmail.com',
                      style: TextStyle(
                        wordSpacing: 2.5,
                        color: _color,
                        fontSize: 20,
                        fontFamily: 'Bebas Neue',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
