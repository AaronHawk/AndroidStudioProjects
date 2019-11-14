import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

        void main() => runApp(MyApp());

class Post {

    //fields names from the datadb
    final String platform;
    final String year;
    final String title;
    final String genre;

    Post({this.platform, this.year, this.title, this.genre});

    factory Post.fromJson(Map<String, dynamic> json) {
        return Post(
                platform: json['platform'],
                year: json['year'],
                title: json['title'],
                genre: json['genre'],
    );
    }

    Map toMap() {
        var map = new Map<String, dynamic>();
        map["year"] = year;
        map["title"] = title;
        map["genre"] = genre;
        map["platform"] = platform;

        return map;
    }
}

    Future<Post> createPost(String url, {Map body}) async {
        return http.post(url, body: body).then((http.Response response) {
final int statusCode = response.statusCode;

        if (statusCode < 200 || statusCode > 400 || json == null) {
        throw new Exception("Error while fetching data");
        }
        return Post.fromJson(json.decode(response.body));
        });
        }

class MyApp extends StatelessWidget {
    final Future<Post> post;

    MyApp({Key key, this.post}) : super(key: key);
    static final CREATE_POST_URL = 'http://flutter.locusnoesis.com/input.php';
    TextEditingController titleControler = new TextEditingController();
    TextEditingController genreControler = new TextEditingController();
    TextEditingController platformControler = new TextEditingController();
    TextEditingController yearControler = new TextEditingController();



    @override
    Widget build(BuildContext context) {
        // TODO: implement build
        return MaterialApp(
                title: "WEB SERVICE",
                theme: ThemeData(
                primaryColor: Colors.deepOrange,
      ),
        home: Scaffold(
                appBar: AppBar(
                title: Text('Create Post'),
          ),
        body: new Container(
                margin: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: new Column(
                children: <Widget>[
        new TextField(
                controller: titleControler,
                decoration: InputDecoration(
                hintText: "title....", labelText: 'Post Title'),
                ),
        new TextField(
                controller: genreControler,
                decoration: InputDecoration(
                hintText: "Genre....", labelText: 'Post Genre'),
                ),
        new TextField(
                controller: platformControler,
                decoration: InputDecoration(
                hintText: "Platform....", labelText: 'Post Platform'),
                ),
        new TextField(
                controller: yearControler,
                decoration: InputDecoration(
                hintText: "Year....", labelText: 'Post Year'),
                ),


        new RaisedButton(
                onPressed: () async {
            Post newPost = new Post(
                    platform: platformControler.text, year: yearControler.text, title: titleControler.text, genre: genreControler.text);
            Post p = await createPost(CREATE_POST_URL,
                    body: newPost.toMap());
            print(p.title);
        },
        child: const Text("Create"),
                )
              ],
            ),
          )),
    );
    }
}
