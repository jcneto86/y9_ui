import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/widgets.dart';

class Y9Button extends StatelessWidget {
  const Y9Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: const Color(0xff144695),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 7.0, end: 6.0),
          child: Text(
            'Bouttom',
            style: TextStyle(
              fontFamily: 'Helvetica Neue',
              fontSize: 20,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
