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
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 10, color: Color(0xffe2e2e2)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getMovieRankWidget(),
          SizedBox(
            height: 12,
          ),
          getMovieContentWidget(),
          SizedBox(
            height: 12,
          ),
          getMovieIntroduceWidget(),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }

  getMovieRankWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(9, 4, 9, 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: Color.fromARGB(255, 238, 205, 144),
      ),
      child: Text(
        "No.${movie.title}",
        style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 131, 95, 36)),
      ),
    );
  }

  getMovieContentWidget() {
    return LDMovieContent(movie);
  }

  getMovieIntroduceWidget() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Color(0xfff2f2f2), borderRadius: BorderRadius.circular(5)),
      child: Text(
        movie.originalTitle,
        style: TextStyle(fontSize: 14, color: Colors.black54),
      ),
    );
  }
}

class LDMovieContent extends StatelessWidget {
  final MovieItem movie;

  LDMovieContent(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getContentImage(),
          SizedBox(
            width: 12,
          ),
          getContentDesc(),
          getDashLine(),
          getContentWish()
        ],
      ),
    );
  }

  Widget getContentImage() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(3)),
      child: Image.network(movie.imageURL),
    );
  }

  Widget getContentDesc() {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        getTitleWidget(),
        SizedBox(
          height: 3,
        ),
        getRatingWidget(),
        SizedBox(
          height: 3,
        ),
        getInfoWidget()
      ],
    ));
  }

  getDashLine() {
    return Container(
      width: 1,
      height: 100,
      child: LDDashedLine(
        axis: Axis.vertical,
        dashedHeight: 6,
        dashedWidth: .5,
        count: 12,
      ),
    );
  }

  getTitleWidget() {
    List<InlineSpan> spans = [];

    List<InlineSpan> _spans = movie.title.runes.map((rune) {
      return WidgetSpan(
          child: Text(
        String.fromCharCode(rune),
        style: TextStyle(fontSize: 16),
      ));
    }).toList();
    spans.addAll(_spans);

    return Text.rich(
      TextSpan(
        children: [
          WidgetSpan(
              child: Icon(
                Icons.play_circle_outline,
                color: Colors.redAccent,
              ),
              baseline: TextBaseline.ideographic,
              alignment: PlaceholderAlignment.middle),
          ...movie.title.runes.map((rune) {
            return WidgetSpan(
                child: Text(
                  String.fromCharCode(rune),
                  style: TextStyle(fontSize: 16),
                ),
                baseline: TextBaseline.ideographic,
                alignment: PlaceholderAlignment.middle);
          }).toList(),
          WidgetSpan(
              child: Text(
                "(${movie.playDate})",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              baseline: TextBaseline.ideographic,
              alignment: PlaceholderAlignment.middle)
        ],
      ),
    );

    return Stack(
      children: <Widget>[
        Icon(
          Icons.play_circle_outline,
          color: Colors.redAccent,
        ),
        SizedBox(
          width: 4,
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: movie.title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            TextSpan(
              text: "(${movie.playDate})",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            )
          ]),
          maxLines: 2,
        ),
      ],
    );
  }

  getRatingWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        LDStarRating(
          rating: movie.rating,
          size: 18,
        ),
        SizedBox(width: 5),
        Text("${movie.rating}")
      ],
    );
  }

  getInfoWidget() {
    // 1.获取种类字符串
    final genres = movie.genres.join(" ");
    final director = movie.director.name;
    var castString = "";
    for (final cast in movie.casts) {
      castString += cast.name + " ";
    }

    // 2.创建Widget
    return Text(
      "$genres / $director / $castString",
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 14),
    );
  }

  Widget getContentWish() {
    return Container(
      width: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/images/home/wish.png",
            width: 25,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "想看",
            style: TextStyle(
                fontSize: 14, color: Color.fromARGB(255, 235, 170, 60)),
          )
        ],
      ),
    );
  }
}
