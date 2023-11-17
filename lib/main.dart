import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Stack Inside Container')),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.grey[500],
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.white,
                        ),
                        Positioned(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.grey[300],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: Container(
                  color: Colors.grey[500],
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.white,
                      ),
                      Positioned(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.grey[300],  
                        ),
                        ),
                      ),
                    ],
                  ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
