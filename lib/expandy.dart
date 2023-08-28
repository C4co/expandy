library expandy;

import 'package:flutter/material.dart';

part './expandy_header.dart';
part './expandy_content.dart';
part './expandy_render.dart';

class Expandy extends StatefulWidget {
  final List<Widget> children;
  final String title;
  final Color? backgroundColor;
  final TextStyle? titleStyle;
  final double borderRadius;
  final EdgeInsets titlePadding;

  const Expandy({
    super.key,
    required this.children,
    required this.title,
    this.backgroundColor,
    this.titleStyle,
    this.borderRadius = 10,
    this.titlePadding = const EdgeInsets.all(15),
  });

  @override
  State<Expandy> createState() => ExpandyState();
}

class ExpandyState extends State<Expandy> with TickerProviderStateMixin {
  final GlobalKey _contentKey = GlobalKey();
  double _height = 0;
  double? _expandedHeight = 0;
  bool _isOpen = false;
  bool _isLoaded = false;
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _expandedHeight = _contentKey.currentContext?.size?.height;

      setState(() {
        _height = 0;
        _isLoaded = true;
      });
    });

    super.initState();
  }

  toggleExpansion() {
    setState(() {
      if (_isOpen) {
        _height = 0;
        _isOpen = false;
        _animationController?.reverse();
      } else {
        _height = _expandedHeight!;
        _isOpen = true;
        _animationController?.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return render();
  }
}
