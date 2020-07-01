import 'package:Frodo/models/home_model.dart';
import 'package:Frodo/utils/log.dart';
import 'package:flutter/material.dart';
import 'package:Frodo/api/home_request.dart';
import 'package:Frodo/components/content/movie_list_item.dart';

class LDHomeContent extends StatefulWidget {
  @override
  _LDHomeContentState createState() => _LDHomeContentState();
}

class _LDHomeContentState extends State<LDHomeContent> {
  int _start = 0;
  List<MovieItem> movies = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getMovieTopList(false);
    
    FLog("-----------");
  }

  void getMovieTopList(isPull) {
    var pageNo = _start;

    if (!isPull) {
      pageNo = 0;
    }

    HomeRequest.getMovieTopList(pageNo, 10).then((res) {
      setState(() {
        movies.addAll(res);
        _start += 1;
      });
    });

    FLog(movies);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (BuildContext ctx, int index) {
            return LDMovieListItem(movies[index]);
          }),
    );
  }
}
