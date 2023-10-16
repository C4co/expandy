import 'package:flutter/material.dart';
import './expandy.dart';

class ExpandyContainer extends StatelessWidget {
  final double height;
  final Expandy widget;

  const ExpandyContainer({
    super.key,
    required this.height,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      key: const Key('expandy_content'),
      curve: Curves.fastOutSlowIn,
      duration: const Duration(milliseconds: 300),
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(),
      height: height,
      width: double.infinity,
      child: Wrap(
        children: widget.children,
      ),
    );
  }
}
