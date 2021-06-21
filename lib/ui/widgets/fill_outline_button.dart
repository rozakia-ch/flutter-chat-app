import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;

class FillOutlineButton extends StatelessWidget {
  const FillOutlineButton({
    Key? key,
    this.isFilled = true,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final bool isFilled;
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(color: Colors.white),
      ),
      elevation: isFilled ? 2 : 0,
      color: isFilled ? Colors.white : Colors.transparent,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: isFilled ? style.contentColorLightTheme : Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
