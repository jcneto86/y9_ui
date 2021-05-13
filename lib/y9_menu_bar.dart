import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Y9MenuBar extends StatelessWidget {
  final double height;
  final List<Widget>? actions;
  final String title;
  final Color titleColor;
  final Color backgroundColors;
  const Y9MenuBar(
      {Key? key,
      this.height = 60.0,
      this.actions,
      this.title = "My app Y9",
      this.titleColor = Colors.white,
      this.backgroundColors = Colors.blue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColors,
      height: height,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 22, color: titleColor),
            ),
          )),
          Row(
            children: actions == null ? [Container()] : actions!,
          ),
        ],
      ),
    );
  }
}
