import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:y9_ui/y9_body.dart';

class Y9App extends StatefulWidget {
  final Y9SBody? body;
  final Widget? menuBar;

  const Y9App({Key? key, this.body, this.menuBar}) : super(key: key);
  @override
  _Y9AppState createState() => _Y9AppState();
}

class _Y9AppState extends State<Y9App> {
  Widget _body = Container();
  Widget _menuBar = Container();
  @override
  void initState() {
    _body = widget.body == null ? Container() : widget.body!;
    _menuBar = widget.menuBar == null ? Container() : widget.menuBar!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _menuBar,
          Expanded(child: _body),
        ],
      ),
    );
  }
}
