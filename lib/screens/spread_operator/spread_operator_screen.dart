import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SpreadOperatorScreen extends StatefulWidget {
  final String title;

  const SpreadOperatorScreen({Key? key, required this.title}) : super(key: key);
  @override
  _SpreadOperatorScreenState createState() => _SpreadOperatorScreenState();
}

class _SpreadOperatorScreenState extends State<SpreadOperatorScreen> {
  int i = 1;
  List<Widget> flutterCard = [];
  Widget cardWidget(int position) {
    return Card(
      elevation: 0,
      color: Colors.grey,
      margin: const EdgeInsets.only(bottom: 10),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            'Card - $position',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String aboutSpreadOperator =
        'Since version 2.3, Dart adds a new operator called spread which uses three dots (...) notations. It can be used to extend the elements of a Collection.';
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          TextButton.icon(
            onPressed: () {
              i <= 10
                  ? setState(() {
                      flutterCard.add(cardWidget(i));
                      i++;
                    })
                  : Fluttertoast.showToast(
                      msg: 'You cannot add more than 10 cards',
                    );
            },
            icon: const Icon(Icons.add, color: Colors.white),
            label: const Text(
              'Add Card',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 0,
                child: Text(
                  aboutSpreadOperator,
                  textAlign: TextAlign.justify,
                ),
              ),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(10),
                  children: [
                    ...flutterCard,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
