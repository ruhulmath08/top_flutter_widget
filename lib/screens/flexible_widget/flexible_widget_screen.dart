import 'package:flutter/material.dart';

class FlexibleWidgetScreen extends StatefulWidget {
  final String title;

  const FlexibleWidgetScreen({Key? key, required this.title}) : super(key: key);
  @override
  _FlexibleWidgetScreenState createState() => _FlexibleWidgetScreenState();
}

class _FlexibleWidgetScreenState extends State<FlexibleWidgetScreen> {
  bool _removeHeight = true;
  bool _useFitElement = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Info about Flexible'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 0,
                          leading: CircleAvatar(
                            radius: 8,
                          ),
                          title: Text('Flexible takes only the needed space'),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 0,
                          leading: CircleAvatar(
                            radius: 8,
                          ),
                          title: Text('''Inside Flexible if we use Container and don't set height it will take all the space'''),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          horizontalTitleGap: 0,
                          leading: CircleAvatar(
                            radius: 8,
                          ),
                          title: Text('''Inside Flexible if we use "FlexFit.tight" it will take all the space'''),
                        ),
                      ],
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('Cancel'),
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(Icons.info),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              fit: _useFitElement ? FlexFit.tight : FlexFit.loose,
              child: Container(
                height: _removeHeight ? 50 : null, //if we remove the height, 3 card takes equal height
                color: Colors.red,
                child: Center(
                  child: _removeHeight
                      ? const Text(
                          'Height: 50',
                          style: TextStyle(color: Colors.white),
                        )
                      : const SizedBox(),
                ),
              ),
            ),
            Flexible(
              fit: _useFitElement ? FlexFit.tight : FlexFit.loose,
              child: Container(
                height: _removeHeight ? 100 : null, //if we remove the height, 3 card takes equal height
                color: Colors.green,
                child: Center(
                  child: _removeHeight
                      ? const Text(
                          'Height: 100',
                          style: TextStyle(color: Colors.white),
                        )
                      : const SizedBox(),
                ),
              ),
            ),
            Flexible(
              fit: _useFitElement ? FlexFit.tight : FlexFit.loose,
              child: Container(
                height: _removeHeight ? 100 : null, //if we remove the height, 3 card takes equal height
                color: Colors.blue,
                child: Center(
                  child: _removeHeight
                      ? const Text(
                          'Height: 150',
                          style: TextStyle(color: Colors.white),
                        )
                      : const SizedBox(),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        child: Row(
          children: [
            Expanded(
              child: CheckboxListTile(
                value: _removeHeight,
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.zero,
                title: const Text('Use Height'),
                onChanged: (newValue) {
                  setState(() {
                    _removeHeight = newValue!;
                  });
                },
              ),
            ),
            Expanded(
              child: CheckboxListTile(
                value: _useFitElement,
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.zero,
                title: const Text('Use fit element'),
                onChanged: (newValue) {
                  setState(() {
                    _useFitElement = newValue!;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
