import 'package:flutter/material.dart';
import 'package:testapp/utils/api_functions.dart';
import 'package:testapp/widgets/list.dart';
import 'package:testapp/widgets/list_item.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List> fMovieList;

  @override
  initState() {
    super.initState();

    fMovieList = _loadData();
  }

  Future<List> _loadData() async {
    return await ApiRequests().fetchAllMovies();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new FutureBuilder(
        future: fMovieList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return MovieList(
                movieList: snapshot.data
            );
          }
          return new Center(
              child: new CircularProgressIndicator()
          );
        },
      ),
    );
  }
}