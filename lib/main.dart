import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Less known letter', text: 'Some random long text just to see how it works'),
    Quote(author: 'An author known by no one', text: 'Another very meaningful quote'),
    Quote(author: 'Well known author', text: 'Very useful quote')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Some quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        ));
  }
}
