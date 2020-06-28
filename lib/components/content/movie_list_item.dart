import 'package:flutter/material.dart';
import 'package:Frodo/components/common/dashed_line.dart';
import 'package:Frodo/components/common/star_rating.dart';
import 'package:Frodo/models/home_model.dart';

class LDMovieListItem extends StatelessWidget {

  final MovieItem movie;

  LDMovieListItem(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(movie.title)
        ],
      ),
    );
  }
}

