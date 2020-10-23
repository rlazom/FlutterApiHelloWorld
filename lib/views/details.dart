import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final item;

  const Details({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new Center(
            child: new SingleChildScrollView(
              child: new Card(
                  elevation: 2,
                  child: new Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              new Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(item['title'], style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                  new Text(item['release_date'], style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                                  new Divider()
                                ],
                              ),
                            ],
                          ),
                        ),
                        new Text(item['opening_crawl'],textAlign: TextAlign.justify,)
                      ],
                    ),
                  )
              ),
            ),
          ),
          new Align(
            alignment: Alignment.topLeft,
              child: new Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: new IconButton(
                  icon: new Icon(Icons.chevron_left),
                  onPressed: (){Navigator.pop(context);}
                )
              )
          )
        ],
      ),
    );
  }
}
