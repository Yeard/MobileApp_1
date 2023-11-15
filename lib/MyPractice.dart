import 'package:flutter/material.dart';

class MyPractice extends StatelessWidget {
  const MyPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/Tanvir.jpeg'),
              ),
              Text(
                'Tanbir Hossain',
                style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25.0,vertical: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.lightBlueAccent[400],
                  ),
                  title: Text('+801090937713',
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 25.0,
                        color: Colors.lightBlueAccent[400],
                    ),),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.lightBlueAccent[400],
                  ),
                  title: Text(
                    'Tanbir@gmail.com',
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        color: Colors.lightBlueAccent[400],
                        fontSize: 25.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
