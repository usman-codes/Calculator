import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpress;
  const Mybutton(
      {super.key,
      required this.title,
      this.color = const Color(0xff272727),
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: color,
            ),
            child: Center(
                child: Text(
              title,
              style: TextStyle(fontSize: 23, color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}
