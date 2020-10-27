import 'package:flutter/material.dart';

void main() => runApp(NinjaCard());

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          title: Text('Ninja Card'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/my.jpg'),
                  radius: 50.0,
                ),
              ),
              Divider(
                color: Colors.grey[400],
                indent: 40.0,
                height: 80.0,
              ),
              Text(
                'Name',
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.grey,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Jeewantha',
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Text(
                'Ninja Level',
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.grey,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                '$ninjaLevel',
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Upuljeewantha070@gmail.com',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 15.0,
                        letterSpacing: 2.0),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ninjaLevel++;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.blueGrey,
        ),
      ),
    );
  }
}
