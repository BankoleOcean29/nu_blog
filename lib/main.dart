import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Singing Orange',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Delicious Handrawn'),
      home: Blog(myName: '', myEmail: ''),
    );
  }
}

class Blog extends StatefulWidget {
  const Blog({
    Key? key,
    required this.myName,
    required this.myEmail,
  }) : super(key: key);

  final String myName;
  final String myEmail;

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  bool isHover = false;
  bool isHover2 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff8E5572),
        body: SingleChildScrollView(
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth < 600) {
              return Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                    child: Text(
                      'Silicon effect',
                      style: TextStyle(fontSize: 30, color: Color(0xffBBBE64)),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 5,
                    width: double.infinity,
                    color: const Color(0xff0B0033),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      MouseRegion(
                        onEnter: (PointerEvent event) {
                          setState(() {
                            isHover = true;
                          });
                        },
                        onExit: (PointerEvent event) {
                          setState(() {
                            isHover = false;
                          });
                        },
                        child: Text('hosted by Bankole Babarinsa.',
                            style: TextStyle(
                                color: isHover
                                    ? Color(0xffBBBE64)
                                    : Color(
                                  0xff000000,
                                ),
                                fontSize: 20,
                                fontWeight: FontWeight.w400)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),

                    ],
                  ),
                  const SizedBox(
                    height:20,
                  ),
                  Text(
                    'Bankolescripted@gmail.com',
                    style: TextStyle(
                        color: isHover2
                            ? Color(0xffBBBE64)
                            : Color(
                          0xff000000,
                        ),
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height:20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      height: 100,
                      width: 1000,
                      color: const Color(0xffBCAA99),
                      child: const Center(
                        child: Text(
                          'Understanding mobile applications',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff443850)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      height: 100,
                      width: 1000,
                      color: const Color(0xffBCAA99),
                      child: const Center(
                        child: Text(
                          'How could you build an MVP',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff443850)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90.0, left: 220),
                    child: SizedBox(
                      height: 70,
                      width: 70,
                      child: FloatingActionButton(onPressed: () {},
                      backgroundColor: const Color(0xffBBBE64),
                      child: Icon(Icons.mail),),
                    ),
                  )
                ],
              );
            } else {
              return Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                    child: Text(
                      'Silicon effect',
                      style: TextStyle(fontSize: 100, color: Color(0xffBBBE64)),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 5,
                    width: double.infinity,
                    color: const Color(0xff0B0033),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                      ),
                      MouseRegion(
                        onEnter: (PointerEvent event) {
                          setState(() {
                            isHover = true;
                          });
                        },
                        onExit: (PointerEvent event) {
                          setState(() {
                            isHover = false;
                          });
                        },
                        child: Text('hosted by Bankole Babarinsa.',
                            style: TextStyle(
                                color: isHover
                                    ? Color(0xffBBBE64)
                                    : Color(
                                        0xff000000,
                                      ),
                                fontSize: 40,
                                fontWeight: FontWeight.w700)),
                      ),
                      const SizedBox(
                        width: 600,
                      ),
                      MouseRegion(
                        onEnter: (PointerEvent event) {
                          setState(() {
                            isHover2 = true;
                          });
                        },
                        onExit: (PointerEvent event) {
                          setState(() {
                            isHover2 = false;
                          });
                        },
                        child: Text(
                          'Bankolescripted@gmail.com',
                          style: TextStyle(
                              color: isHover2
                                  ? Color(0xffBBBE64)
                                  : Color(
                                      0xff000000,
                                    ),
                              fontSize: 40,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 250,
                  ),
                  Container(
                    height: 100,
                    width: 1000,
                    color: const Color(0xffBCAA99),
                    child: const Center(
                      child: Text(
                        'Understanding mobile applications',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff443850)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 140,
                  ),
                  Container(
                    height: 100,
                    width: 1000,
                    color: const Color(0xffBCAA99),
                    child: const Center(
                      child: Text(
                        'How could you build an MVP',
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w800,
                            color: Color(0xff443850)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 140,
                  ),
                ],
              );
            }
          }),
        ),
      ),
    );
  }
}
