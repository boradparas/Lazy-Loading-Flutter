import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lazy_loading_practice/data/models/user.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isLoading = false;
  int _page = 0;
  ScrollController _scrollController = new ScrollController();
  List _users = new List();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _getMoreData(_page);
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreData(_page);
      }
    });
  }

  Widget _buildList() {
    return ListView.builder(
      itemCount: _users.length + 1, // Add one more item for progress indicator
      padding: EdgeInsets.symmetric(vertical: 8.0),
      itemBuilder: (BuildContext context, int index) {
        if (index == _users.length) {
          return _buildProgressIndicator();
        } else {
          return new ListTile(
            leading: ClipOval(
              child: Image.network(
                _users[index].picture.medium,
              ),
            ),
            title: Text((_users[index].name.first)),
            subtitle: Text((_users[index].email)),
          );
        }
      },
      controller: _scrollController,
    );
  }

  void _getMoreData(int index) async {
    if (!_isLoading) {
      setState(() {
        _isLoading = true;
      });
      String url = "https://randomuser.me/api/?page=" +
          index.toString() +
          "&results=10&seed=abc";
      http.Response response = await http.get(url);
      String responseBody = response.body;
      List usersList = (json.decode(responseBody)["results"] as List)
          .map((e) => Results.fromJson(e))
          .toList();
      setState(() {
        _isLoading = false;
        _users.addAll(usersList);
        _page++;
      });
    }
  }

  Widget _buildProgressIndicator() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Opacity(
        opacity: _isLoading ? 1.0 : 0.0,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: _buildList(),
      ),
      resizeToAvoidBottomPadding: false,
    );
  }
}
