class Quote {
  String text;
  String author;

  // Traditional way
  // Quote(String author, String text) {
  //   this.author = author;
  //   this.text = text;
  // }

  // named
  Quote({ required this.text, required this.author });
}
