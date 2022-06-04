import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rekrutacja/view_model/provider.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Text(
        Provider.of<InOutProvider>(context).message,
        textScaleFactor: 1.5,
      )),
    );
  }
}
