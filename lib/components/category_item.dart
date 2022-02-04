import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String? text;
  Color? color;
  Function()? tapped;
  Category({this.text, this.color,this.tapped});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapped,
      child: Container(
        alignment: AlignmentDirectional.centerStart,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '$text',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        height: 100,
        width: double.infinity,
        color: color,
      ),
    );
  }
}
