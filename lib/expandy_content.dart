part of './expandy.dart';

extension ExpandyContent on ExpandyState {
  AnimatedContainer expandyContainer() {
    return AnimatedContainer(
      key: const Key('expander_content'),
      curve: Curves.fastOutSlowIn,
      duration: const Duration(milliseconds: 300),
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(),
      height: _height,
      width: double.infinity,
      child: Wrap(
        children: widget.children,
      ),
    );
  }
}
