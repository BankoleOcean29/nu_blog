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
      home: Blog(),
    );
  }
}

class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange,
        body: SingleChildScrollView(
          child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth < 600) {
              return Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        'The Singing Orange',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.black,
                    height: 2,
                    width: double.infinity,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'hosted by Bankole Babarinsa',
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'title: To err is Divine',
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: const Color(0xff8D6E63),
                    //height: 900,
                    width: 350,
                    child: const Text(
                      'She sings like lust, and dances like love, or is it the other '
                      'way around?, I\'m not sure, but she had me, from the very'
                      'first moment. Jupiter and Venus would delight',
                      style: TextStyle(fontSize: 25, height: 1.5),
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
                      'Singing Orange',
                      style: TextStyle(fontSize: 100),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 5,
                    width: double.infinity,
                    color: Color(0xff0B0033),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        'hosted by Bankole Ocean',
                        style: TextStyle(color: Color(0xff832232),
                        fontSize: 20),
                      )
                    ],
                  )
                ],
              );
            }
          }),
        ),
      ),
    );
  }
}
