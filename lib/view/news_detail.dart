import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final url;
  final title;
  final content;
  final publishedAt;
  final author;
  final urlToImage;

  const Detail(
      {this.url,
      this.title,
      this.content,
      this.publishedAt,
      this.author,
      this.urlToImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCE4EC),
      body: Column(
        children: <Widget>[
          urlToImage != null? Image.network(urlToImage) :
          Container(
            height: 250,
            color: Colors.pink[50],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$title',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Raleway'),
                ),
                SizedBox(height: 10),
                Text(
                  '$publishedAt',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                Divider(),
                SizedBox(height: 20),
                Text('$content', textAlign: TextAlign.justify, style: TextStyle( fontFamily: 'Raleway', fontSize: 16)),
                Divider(height: 40,),
                Text('Penulis: $author'),
                SizedBox(height: 5),
                Text('Sumber: $url',textAlign: TextAlign.justify,style: TextStyle( fontFamily: 'Raleway')),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
