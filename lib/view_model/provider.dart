import 'package:flutter/material.dart';
import 'package:rekrutacja/model/deviant_finder.dart';

///class responsible for connecting view with model
class InOutProvider extends ChangeNotifier {
  String userInput = "unknown";
  String message = "unknown";
  /// changes message variable
  void changeInput(String input) {
    userInput = input;
    notifyListeners();
  }

  ///finds a deviant number and assign it to 'message' vaviable
  void findDeviant() {
    message = DeviantFinder.findDeviant(userInput);
    notifyListeners();
  }
}
