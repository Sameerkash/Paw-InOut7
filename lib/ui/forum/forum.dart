import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'forum_detail.dart';

class ForumPage extends StatefulWidget {
  final String title = "Forum";

  @override
  _ForumPageState createState() => new _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  /// Top Icons
  var topCategoyIcons = new Container(
    alignment: Alignment.center,
    decoration: new BoxDecoration(
        gradient: new LinearGradient(
      colors: [
        Colors.amber[400],
        Colors.amber[400],
      ],
      begin: const FractionalOffset(0.0, 0.0),
      end: const FractionalOffset(0.0, 1.0),
      stops: [0.0, 1.0],
      tileMode: TileMode.clamp,
    )),
    child: new Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 0.0,
      ),
      decoration: new BoxDecoration(
        color: Colors.white,
        // border: new Border.all(color: Colors.black, width: 1.0),
        borderRadius: new BorderRadius.only(
          topLeft: new Radius.circular(30.0),
          topRight: new Radius.circular(30.0),
        ),
      ),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new CategoryIcon(FontAwesomeIcons.dog, "Dogs", false),
          new CategoryIcon(FontAwesomeIcons.cat, "Cats", false),
          new CategoryIcon(FontAwesomeIcons.crow, "Crow", false),
          new CategoryIcon(FontAwesomeIcons.fish, "Fish", false),
        ],
      ),
    ),
  );

  var categoryMetric = new Container(
    padding: const EdgeInsets.all(5.0),
    margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 15.0),
    decoration: new BoxDecoration(
      gradient: new LinearGradient(
        colors: [
          Colors.white,
          Colors.white,
        ],
        begin: const FractionalOffset(0.0, 0.5),
        end: const FractionalOffset(0.0, 1.0),
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp,
      ),
      // border: new Border.all(color: Colors.black, width: 1.0),
      borderRadius: new BorderRadius.only(
        bottomLeft: new Radius.circular(30.0),
        bottomRight: new Radius.circular(30.0),
      ),
    ),
    child: new Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new CategoryIcon(FontAwesomeIcons.cuttlefish, "Cuttle Fish", false),
        new CategoryIcon(FontAwesomeIcons.horse, "Horse", false),
        new CategoryIcon(FontAwesomeIcons.earlybirds, "Sparrow", false),
        new CategoryIcon(FontAwesomeIcons.dove, "Pigeon", false),
      ],
    ),
  );

  static final listItemsData = [
    new ListEntry("Forum 1", "test", "Dog breed", 18, 2, true),
    new ListEntry("Forum 2", "test", "best pedigree", 15, 3, false),
    new ListEntry("Forum 3", "test", "Adopting dog", 17, 0, false),
    new ListEntry("Forum 4", "test", "lost my dog", 12, 2, true),
    new ListEntry("Forum 5", "test", "mate for dog", 41, 5, true),
    new ListEntry("Forum 6", "test", "PAW tag", 12, 1, true),
  ];
  var listView = new ListView.builder(
    itemBuilder: (BuildContext context, int index) =>
        new EntryItem(listItemsData[index]),
    itemCount: listItemsData.length,
    shrinkWrap: true,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: const Color(0xffffdcc9),
      appBar: new AppBar(
        centerTitle: false,
        elevation: 0.0,
        title: new Text(
          widget.title,
          textScaleFactor: 1.3,
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: _onSearchPressed,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: new Column(
          children: <Widget>[topCategoyIcons, categoryMetric, listView],
        ),
      ),
    );
  }

  void _onSearchPressed() {
    Navigator.pop(context);
  }
}

class ListEntry {
  final String title;
  final String icon;
  final String description;
  final int views;
  final int responses;
  final bool answered;

  ListEntry(this.title, this.icon, this.description, this.views, this.responses,
      this.answered);
}

class CategoryIcon extends StatelessWidget {
  const CategoryIcon(this.icon, this.iconText, this.selected);

  final String iconText;
  final IconData icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[new Icon(icon), new Text(iconText)],
    );
  }
}

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final ListEntry entry;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(3.0),
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.all(new Radius.circular(15.0)),
      ),
      child: new ListTile(
        title: new Text(entry.title),
        subtitle: new Text(entry.description),
        leading: new Icon(
          Icons.dashboard,
          color: Colors.amber[400],
        ),
        // trailing:
        //     CategoryIcon(Icons.remove_red_eye, entry.views.toString(), false),
        trailing: Container(
          width: 70,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new CategoryIcon(
                  Icons.remove_red_eye, entry.views.toString(), false),
              new CategoryIcon(
                  Icons.comment, entry.responses.toString(), false),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ForumDetailPage()));
        },
      ),
    );
  }
}
