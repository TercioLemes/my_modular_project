import 'package:flutter/material.dart';

class InternalPage extends StatelessWidget {
  final String title;
  final Color color;

  const InternalPage({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: Center(child: Text(title)),
    );
  }
}
