import 'package:flutter/material.dart';
import './data.dart';
import './network.dart';

class MovieList extends StatefulWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  late Future<Moviedb> movieObject;
  @override
  void initState() {
    super.initState();
    movieObject = Network().getMovie();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
