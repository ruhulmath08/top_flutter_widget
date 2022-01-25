import 'package:flutter/material.dart';

class AdaptiveDesignScreen extends StatefulWidget {
  final String title;

  const AdaptiveDesignScreen({Key? key, required this.title}) : super(key: key);
  @override
  _AdaptiveDesignScreenState createState() => _AdaptiveDesignScreenState();
}

class _AdaptiveDesignScreenState extends State<AdaptiveDesignScreen> {
  double _sliderValue = 0.1;
  bool _switchListTileValue = false;
  bool _switchValue = true;

  @override
  void initState() {
    super.initState();
    //_switchListTileValue = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Slider.adaptive(
                value: _sliderValue,
                onChanged: (double newValue) {
                  setState(() {
                    _sliderValue = newValue;
                  });
                },
              ),
              SwitchListTile.adaptive(
                title: const Text('Switch List Tile'),
                value: _switchListTileValue,
                onChanged: (bool newValue) {
                  setState(() {
                    _switchListTileValue = newValue;
                  });
                },
              ),
              Switch.adaptive(
                value: _switchValue,
                onChanged: (bool newValue) {
                  setState(() {
                    _switchValue = newValue;
                  });
                },
              ),
              Icon(Icons.adaptive.share),
              const SizedBox(height: 10),
              const CircularProgressIndicator.adaptive(),
            ],
          ),
        ),
      ),
    );
  }
}
