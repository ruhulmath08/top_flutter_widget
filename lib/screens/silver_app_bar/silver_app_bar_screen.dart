import 'package:flutter/material.dart';

class SilverAppBarScreen extends StatefulWidget {
  final String title;

  const SilverAppBarScreen({Key? key, required this.title}) : super(key: key);
  @override
  _SilverAppBarScreenState createState() => _SilverAppBarScreenState();
}

class _SilverAppBarScreenState extends State<SilverAppBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: Text(widget.title),
            pinned: false,
            floating: true, //false -> visible app bar in last, true  -> first
            snap: true,
            expandedHeight: 150.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Map'),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Text(
                  'SLIVER',
                  style: TextStyle(fontSize: 600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
