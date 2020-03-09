import 'package:flutter/material.dart';
import 'package:testapp/views/details.dart';

class ListItem extends StatelessWidget {
  final item;

  const ListItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    goToDetails(){
      MaterialPageRoute route = MaterialPageRoute(builder: (context) =>
          Details(item: item,),
      );

      Navigator.push(
        context,
        route, //MaterialPageRoute
      );
    }

    return new ListTile(
      leading: new Icon(Icons.movie),
      title: new Text(item['title']),
      subtitle: new Text('Episode ' + item['episode_id'].toString()),
      trailing: new Icon(Icons.chevron_right),
      onTap: goToDetails,
    );
  }
}
