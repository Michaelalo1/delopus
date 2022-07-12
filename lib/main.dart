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
      title: 'delopus',
      theme: ThemeData(
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
      body:

          // Custom AppBar for delopus Feed Page

          Column(
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
                  // User Avatar Image on AppBar

                  Image.asset(
                    'assets/Layer9copy2x.png',
                    height: 46,
                    width: 45,
                  ),

                  //delopus logon on AppBar

                  Image.asset(
                    'assets/Layer2copy11@2x.png',
                    height: 28.5,
                    width: 95.3,
                  ),

                  // Hamburger for Menu on AppBar

                  Image.asset(
                    'assets/Layer11copy.png',
                    height: 25,
                    width: 25,
                  ),
                ],
              ),
            ),
          ),

          // Header tabs (DISCUSSIONS, PROJECTS, MY PROJECTS)

          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10.45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                // DISCUSSIONS TAB

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

                // PROJECTS TAB

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

                // MY PROJECTS TAB
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

          // ORANGE DIVIDER IN HEADER SECTION

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
                      constraints:
                          const BoxConstraints(minHeight: 50, minWidth: 40),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 9, vertical: 5),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            color: Colors.white),
                        child: Row(
                          children: [
                            // SETTINGS ICON

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

                    // ADD THOUGHT SECTION

                    ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 50, minWidth: 10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 0),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            color: Colors.white),
                        child: Row(
                          children: [
                            // Add a thought Icon(image)

                            Image.asset(
                              'assets/newforumpost@2x.png',
                              height: 27,
                              width: 27,
                            ),
                            const SizedBox(width: 10),

                            // Add a thought Text

                            const Text(
                              'add a thought',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Product-Sans-Regular',
                                  color: Color.fromRGBO(23, 22, 38, 0.5),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),

                    // Post a project container

                    ConstrainedBox(
                      constraints:
                          const BoxConstraints(minHeight: 50, minWidth: 10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 0),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            color: Colors.white),
                        child: Row(
                          children: [
                            // Image icon(image)

                            Image.asset(
                              'assets/addimage@2x.png',
                              height: 27,
                              width: 27,
                            ),
                            const SizedBox(width: 10),

                            // Post a project text

                            const Text(
                              'post a project',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Product-Sans-Regular',
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
              const SizedBox(height: 10),

              // FEED DATA
              // FEED DATA
              // FEED DATA

              ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 512.04,
                    maxHeight: 512.04,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  // User Avatar Image on feed post

                                  Image.asset('assets/Image4@2x.png',
                                      height: 47, width: 47),
                                  const SizedBox(width: 8),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      // User Display Name on Feed Post

                                      Text(
                                        'Fajas OK',
                                        style: TextStyle(
                                            fontFamily: 'Axiforma-Regular',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(23, 22, 38, 1)),
                                      ),

                                      // User Role (Architect, Student, Etc)

                                      Text('Architect',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontFamily: 'Axiforma-Regular',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  118, 129, 168, 1)))
                                    ],
                                  )
                                ],
                              ),

                              // Hamburger Icon(3 dots Image) for options on Feed Post
                              Image.asset(
                                'assets/3dots@2x.png',
                                height: 32,
                                width: 32,
                              )
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/Image3@2x.png',
                          height: 305.61,
                          width: 500.53,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, right: 12, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/like-orange@2x.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                  const SizedBox(width: 5),
                                  Image.asset(
                                    'assets/saveline-orange@2x.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                  const SizedBox(width: 5),
                                  Image.asset(
                                    'assets/comment@2x.png',
                                    height: 30,
                                    width: 30,
                                  )
                                ],
                              ),
                              Image.asset(
                                'assets/send-orange@2x.png',
                                height: 30,
                                width: 30,
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Row(
                            children: const [
                              Text(
                                '10 likes',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(143, 160, 174, 1)),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '|',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(143, 160, 174, 1)),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '0 comments',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(143, 160, 174, 1)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Row(
                              children: const [
                                Text('Nadil Residence',
                                    style: TextStyle(
                                        fontFamily: 'Axiforma-Regular',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(23, 22, 38, 1))),
                              ],
                            ))
                      ],
                    ),
                  )),

              SizedBox(height: 10),

              // SECOND FEED SCREEN
              // SECOND FEED SCREEN

              ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 512.04,
                    maxHeight: 512.04,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/Image4@2x.png',
                                      height: 47, width: 47),
                                  const SizedBox(width: 8),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Fajas OK',
                                        style: TextStyle(
                                            fontFamily: 'Axiforma-Regular',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(23, 22, 38, 1)),
                                      ),
                                      Text('Architect',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontFamily: 'Axiforma-Regular',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  118, 129, 168, 1)))
                                    ],
                                  )
                                ],
                              ),
                              Image.asset(
                                'assets/3dots@2x.png',
                                height: 32,
                                width: 32,
                              )
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/Image3@2x.png',
                          height: 305.61,
                          width: 500.53,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, right: 12, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/like-orange@2x.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                  const SizedBox(width: 5),
                                  Image.asset(
                                    'assets/saveline-orange@2x.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                  const SizedBox(width: 5),
                                  Image.asset(
                                    'assets/comment@2x.png',
                                    height: 30,
                                    width: 30,
                                  )
                                ],
                              ),
                              Image.asset(
                                'assets/send-orange@2x.png',
                                height: 30,
                                width: 30,
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Row(
                            children: const [
                              Text(
                                '10 likes',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(143, 160, 174, 1)),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '|',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(143, 160, 174, 1)),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '0 comments',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(143, 160, 174, 1)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Row(
                              children: const [
                                Text('Nadil Residence',
                                    style: TextStyle(
                                        fontFamily: 'Axiforma-Regular',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(23, 22, 38, 1))),
                              ],
                            ))
                      ],
                    ),
                  )),
              //THIRD FEED SCREEN
              //THIRD FEED SCREEN
              //THIRD FEED SCREEN
              const SizedBox(height: 10),

              ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 512.04,
                    maxHeight: 512.04,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/Image4@2x.png',
                                      height: 47, width: 47),
                                  const SizedBox(width: 8),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Fajas OK',
                                        style: TextStyle(
                                            fontFamily: 'Axiforma-Regular',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(23, 22, 38, 1)),
                                      ),
                                      Text('Architect',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontFamily: 'Axiforma-Regular',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  118, 129, 168, 1)))
                                    ],
                                  )
                                ],
                              ),
                              Image.asset(
                                'assets/3dots@2x.png',
                                height: 32,
                                width: 32,
                              )
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/Image3@2x.png',
                          height: 305.61,
                          width: 500.53,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 10, right: 12, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/like-orange@2x.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                  const SizedBox(width: 5),
                                  Image.asset(
                                    'assets/saveline-orange@2x.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                  const SizedBox(width: 5),
                                  Image.asset(
                                    'assets/comment@2x.png',
                                    height: 30,
                                    width: 30,
                                  )
                                ],
                              ),
                              Image.asset(
                                'assets/send-orange@2x.png',
                                height: 30,
                                width: 30,
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Row(
                            children: const [
                              Text(
                                '10 likes',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(143, 160, 174, 1)),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '|',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(143, 160, 174, 1)),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '0 comments',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(143, 160, 174, 1)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Row(
                              children: const [
                                Text('Nadil Residence',
                                    style: TextStyle(
                                        fontFamily: 'Axiforma-Regular',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(23, 22, 38, 1))),
                              ],
                            ))
                      ],
                    ),
                  )),
              // const SizedBox(height: 10),
              // ConstrainedBox(
              //   constraints:
              //       const BoxConstraints(minHeight: 512.04, maxHeight: 512.04),
              //   child: Container(
              //     margin: const EdgeInsets.symmetric(horizontal: 10),
              //     padding:
              //         const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              //     decoration: const BoxDecoration(
              //         borderRadius: BorderRadius.all(
              //           Radius.circular(15),
              //         ),
              //         color: Colors.white),
              //   ),
              // )
            ],
          ))
        ],
      ),
    );
  }
}
