import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
      backgroundColor: const Color.fromRGBO(230, 230, 230, 1),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 200,
              minWidth: double.infinity,
            ),
            child: Container(
              padding: const EdgeInsets.only(
                  top: 45, bottom: 15, right: 15, left: 15),
              color: const Color.fromRGBO(23, 22, 38, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/Layer9copy2x.png',
                    height: 46,
                    width: 45,
                  ),
                  Image.asset(
                    'assets/Layer2copy11@2x.png',
                    height: 28.5,
                    width: 95.3,
                  ),
                  Image.asset(
                    'assets/Layer11copy.png',
                    height: 25,
                    width: 25,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10.45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'DISCUSSIONS',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Axiforma-Medium',
                    fontSize: 14,
                    color: Color.fromRGBO(23, 22, 38, 1),
                  ),
                ),
                Text(
                  'PROJECTS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Axiforma-Medium',
                    fontSize: 14,
                    color: Color.fromRGBO(243, 153, 15, 1),
                  ),
                ),
                Text(
                  'MY PROJECTS',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Axiforma-Medium',
                    fontSize: 14,
                    color: Color.fromRGBO(23, 22, 38, 1),
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
          Expanded(
              child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 50, minWidth: 40),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/settings1@2x.png',
                              height: 30,
                              width: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 50, minWidth: 10),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/newforumpost@2x.png',
                              height: 27,
                              width: 27,
                            ),
                            SizedBox(width: 10),
                            const Text(
                              'add a thought',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(23, 22, 38, 0.5),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 50, minWidth: 10),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/addimage@2x.png',
                              height: 27,
                              width: 27,
                            ),
                            SizedBox(width: 10),
                            const Text(
                              'post a project',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(23, 22, 38, 0.5),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),

              // FEED DATA
              // FEED DATA
              // FEED DATA

              ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 512.04,
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        color: Colors.white),
                  )),
              SizedBox(height: 10),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 512.04,
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      color: Colors.white),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
