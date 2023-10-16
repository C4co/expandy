import 'package:flutter/material.dart';
import './expandy.dart';

typedef OnExpansionChanged = void Function();

class ExpandyHeader extends StatelessWidget {
  final Expandy widget;
  final AnimationController? animationController;
  final OnExpansionChanged toggleExpansion;

  const ExpandyHeader({
    super.key,
    required this.widget,
    this.animationController,
    required this.toggleExpansion,
  });

  @override
  Widget build(BuildContext context) {
    var backgroundColor = Theme.of(context).colorScheme.surfaceVariant;
    var titleColor = Theme.of(context).colorScheme.onBackground;

    return Material(
      color: widget.backgroundColor ?? backgroundColor,
      child: InkWell(
        splashColor: widget.backgroundColor ?? backgroundColor,
        key: const Key('expandy_header'),
        onTap: toggleExpansion,
        child: Container(
          padding: widget.titlePadding,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  widget.title,
                  overflow: TextOverflow.visible,
                  style: widget.titleStyle ??
                      TextStyle(
                        color: titleColor,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              RotationTransition(
                turns:
                    Tween(begin: 0.0, end: 0.25).animate(animationController!),
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: titleColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
