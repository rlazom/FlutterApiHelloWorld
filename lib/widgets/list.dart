import 'package:flutter/material.dart';

import 'list_item.dart';

class MovieList extends StatelessWidget {
  const MovieList({
    Key key,
    @required this.movieList,
  }) : super(key: key);

  final List movieList;

  @override
  Widget build(BuildContext context) {
    return new Scrollbar(
      child: new ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          return new ListItem(
            item: movieList[index],
          );
        },
      ),
    );
  }
}