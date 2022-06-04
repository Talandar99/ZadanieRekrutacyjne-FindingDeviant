import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rekrutacja/view/result_screen.dart';
import 'package:rekrutacja/view_model/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) =>
                  Provider.of<InOutProvider>(context, listen: false)
                      .changeInput(value),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ElevatedButton(
                child: const Text('Wyszukaj'),
                onPressed: () async {
                  Provider.of<InOutProvider>(context, listen: false)
                      .findDeviant();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResultScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
