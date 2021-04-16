import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _addad = 0;

  void start_count() {
    setState(() {
      _addad++;
    });
  }

  void retry_count() {
    setState(() {
      _addad = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أذكار',
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background4.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 170,
                    ),
                    SafeArea(
                      child: Container(
                        child: Text(
                          "$_addad",
                          style: TextStyle(
                            fontSize: 25.0,
                            // fontWeight: 10.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 260.0,
                    ),
                    InkWell(
                      onTap: start_count,
                      child: Container(
                        height: 150.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/button.png'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: retry_count,
                      child: Container(
                        child: Icon(
                          Icons.replay_circle_filled,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
