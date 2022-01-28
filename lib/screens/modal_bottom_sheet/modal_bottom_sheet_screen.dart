import 'package:flutter/material.dart';

class ModalBottomSheetScreen extends StatefulWidget {
  final String title;

  const ModalBottomSheetScreen({Key? key, required this.title}) : super(key: key);
  @override
  _ModalBottomSheetScreenState createState() => _ModalBottomSheetScreenState();
}

class _ModalBottomSheetScreenState extends State<ModalBottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              builder: (context) {
                return Container(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Close ModalBottomSheet'),
                    ),
                  ),
                );
              },
            );
          },
          child: Text(widget.title),
        ),
      ),
    );
  }
}
