import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class PostDetailScreen extends StatefulWidget {
  final int postId;

  PostDetailScreen({required this.postId});

  @override
  _PostDetailScreenState createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  Map post = {};
  List comments = [];

  @override
  void initState() {
    super.initState();
    fetchPostDetails();
  }

  fetchPostDetails() async {
    final postResponse = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/${widget.postId}'));
    final commentsResponse = await http.get(Uri.parse(
        'https://jsonplaceholder.typicode.com/posts/${widget.postId}/comments'));

    if (postResponse.statusCode == 200 && commentsResponse.statusCode == 200) {
      setState(() {
        post = json.decode(postResponse.body);
        comments = json.decode(commentsResponse.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Details'),
        backgroundColor: Colors.deepPurple,
      ),
      body: post.isEmpty
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post['title'] ?? '',
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                    ),
                    SizedBox(height: 10),
                    Text(
                      post['body'] ?? '',
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                    Divider(height: 30),
                    Text('Comments', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: comments.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.deepPurple,
                                child: Text(
                                  comments[index]['email'][0].toUpperCase(),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      comments[index]['name'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      comments[index]['body'],
                                      style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
