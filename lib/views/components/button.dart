import 'package:flutter/material.dart';

class ButtonComponents extends StatelessWidget {
  final Function onPressed;
  final Text title;
  const ButtonComponents({Key key, this.onPressed, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: title,
        onPressed: onPressed,
        color: Colors.blue,
        textColor: Colors.white);
  }
}
