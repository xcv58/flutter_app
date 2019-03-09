import 'package:flutter/material.dart';
import './main.dart';
import 'package:english_words/english_words.dart';

class TapableIcon extends StatefulWidget {
  TapableIcon({
    Key key,
    @required this.parent,
    @required this.pair,
    @required this.onChange,
  }) : super(key: key);

  final RandomWordsState parent;
  final WordPair pair;
  final ValueChanged<WordPair> onChange;

  _TapableIcon createState() => _TapableIcon();
}

class _TapableIcon extends State<TapableIcon> {
  //  TapableIcon({ Key key, this.parent: p, // this.pair: pair })

  void _handleTap() {
    widget.onChange(widget.pair);
  }

  Widget build(BuildContext context) {
    // This example adds a green border on tap down.
    // On tap up, the square changes to the opposite state.
    final bool alreadySaved = widget.parent.saved.contains(widget.pair);
    return GestureDetector(
      onTap: _handleTap,
      child: new Icon(
        // Add the lines from here...
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ), // ... to here.
    );
  }
}
