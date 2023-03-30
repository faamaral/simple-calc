import 'package:flutter/material.dart';

import '../utils/constants/button_colors.dart';

class Button extends StatelessWidget {
  final String text;
  final bool big;
  final Color color;
  final void Function(String) callback;

  const Button(
      {Key? key,
      required this.text,
      this.big = false,
      this.color = ButtonColors.defaultColor,
      required this.callback})
      : super(key: key);

  const Button.big(
      {Key? key,
      required this.text,
      this.big = true,
      this.color = ButtonColors.defaultColor,
      required this.callback})
      : super(key: key);

  const Button.operation(
      {Key? key,
      required this.text,
      this.big = false,
      this.color = ButtonColors.operation,
      required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        onPressed: () => callback(text),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: color, foregroundColor: Colors.white),
      ),
    );
  }
}
