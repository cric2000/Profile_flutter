import 'package:flutter/material.dart';

class Infocard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onPressed;

  Infocard({@required this.text,@required this.icon,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 14.0),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.grey[800],
          ),
          title: Text(
            text,
            style: TextStyle(
              color: Colors.grey[800],
              fontFamily: 'Source Sans Pro',
              fontSize: 15.0,
            ),
          ),
        ),
      ),
    );
  }
}
