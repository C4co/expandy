part of './expandy.dart';

extension ExpandyRender on ExpandyState {
  Widget render() {
    var backgroundColor = Theme.of(context).colorScheme.surfaceVariant;

    return Container(
      key: const Key('expander_container'),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(widget.borderRadius),
        ),
        color: widget.backgroundColor ?? backgroundColor,
      ),
      child: Wrap(
        children: [
          expandyHeader(),
          if (!_isLoaded)
            Wrap(
              key: _contentKey,
              children: widget.children,
            ),
          if (_isLoaded) expandyContainer(),
        ],
      ),
    );
  }
}
