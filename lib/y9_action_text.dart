import 'package:flutter/widgets.dart';

class Y9ActionText extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const Y9ActionText({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(text),
    );
  }
}
