import 'package:flutter/material.dart';

class Mail extends StatelessWidget {
  const Mail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: const Color(0xff8E5572),
      body: Center(
        child: Text(
          'Bankolescripted@gmail.com',
          style: TextStyle(
              color: Color(0xffBBBE64),
              fontSize: 30,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
