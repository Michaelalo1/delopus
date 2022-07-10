import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Feed(),
    );
  }
}

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 98,
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 35),
              color: const Color.fromRGBO(18, 17, 29, 1),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/Layer9copy2x.png',
                      height: 31,
                      width: 30,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/Layer2copy11@2x.png',
                      height: 23.5,
                      width: 90.3,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/Layer11copy.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10.45),
            color: Colors.white,
            child: Row(
              children: const [
                Expanded(
                  child: Text(
                    'DISCUSSIONS',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Axiforma-Medium',
                      fontSize: 15,
                      color: Color.fromRGBO(18, 17, 29, 1),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'PROJECTS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Axiforma-Medium',
                      fontSize: 14,
                      color: Color.fromRGBO(243, 153, 15, 1),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'MY PROJECTS',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Axiforma-Medium',
                      fontSize: 14,
                      color: Color.fromRGBO(18, 17, 29, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Color.fromRGBO(243, 153, 15, 1),
            height: 0,
            thickness: 1,
            indent: 0,
            endIndent: 0,
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Image.asset(
                    'assets/settings1@2x.png',
                    height: 27,
                    width: 27,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset(
                    'assets/newforumpost@2x.png',
                    height: 27,
                    width: 27,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset(
                    'assets/addimage@2x.png',
                    height: 27,
                    width: 27,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
