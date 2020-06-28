import 'package:Frodo/network/api.dart';
import 'package:Frodo/network/http_config.dart';
import 'package:Frodo/network/methods.dart';
import 'package:flutter/material.dart';
import 'package:Frodo/models/home_model.dart';
import 'package:Frodo/network/http_request.dart';

class HomeRequest {

  static Future<List<MovieItem>> getMovieTopList(int start, int count) async {

     final result = await HttpRequest().request(Api.top250, params: {
      "start": "$start",
      "count": "$count",
      "apikey": "0df993c66c0c636e29ecbb5344252a4a"
    });

    final subjects = result["subjects"];

    List<MovieItem> movies = [];

    for (var sub in subjects) {
      movies.add(MovieItem.fromMap(sub));
    }

    return movies;
  }

}