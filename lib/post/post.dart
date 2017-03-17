// Copyright (c) 2017, faddat. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';
import 'dart:async' show Future;
import 'dart:convert';
import 'dart:html';
import 'dart:math' show Random;


const _postsPath = 'https://api.steemjs.com/get_discussions_by_trending30?query=%7B%22tag%22%3A%22beyondbitcoin%22%2C%20%22limit%22%3A%20%2210%22%7D';

class Posts {
  static final Random _indexGen = new Random();
  final _id = <String>[];
  final _title = <String>[];
  final _body = <String>[];
  final _jsonMetadata = <String>[];
  final _author = <String>[];

  Future posts() async {
    if (_id.isNotEmpty && _title.isNotEmpty && _body.isNotEmpty && _jsonMetadata.isNotEmpty && _author.isNotEmpty) return;

    var jsonString = await HttpRequest.getString(_postsPath);
    var postings = JSON.decode(jsonString);
    _id.addAll(postings['id']);
    _title.addAll(postings['title']);
    _body.addAll(postings['body']);
    _jsonMetadata.addAll(postings['json_metadata']);
    _author.addAll(postings['author']);
  }
}

class BadgeComponent {
  final Posts _id;
  String badgeName = '';
  String buttonText = 'Aye! Gimme a name!';
  bool isButtonEnabled = false;
  bool isInputEnabled = false;
}


@Component(
  selector: 'Post',
  styleUrls: const ['post.css'],
  templateUrl: 'post.html',
  directives: const [materialDirectives],
  providers: const [materialProviders],
)




