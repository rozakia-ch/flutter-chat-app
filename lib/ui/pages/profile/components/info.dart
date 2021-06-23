import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;

class Info extends StatelessWidget {
  const Info({
    Key? key,
    required this.infoKey,
    required this.info,
  }) : super(key: key);

  final String infoKey, info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: style.defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            infoKey,
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.8),
            ),
          ),
          Text(info),
        ],
      ),
    );
  }
}
