part of './expandy.dart';

extension ExpandyHeader on ExpandyState {
  Material expandyHeader() {
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
                    Tween(begin: 0.0, end: 0.25).animate(_animationController!),
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
