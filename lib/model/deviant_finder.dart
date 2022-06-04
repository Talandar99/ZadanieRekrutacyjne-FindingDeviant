class DeviantFinder {
  ///Method get array of integers and return deviant number.
  ///Deviant is even number in odd numbers list,
  /// or odd number in even numbers list.
  static int? returnDeviantNumber(List<int> numbers) {
    List<int> oddNumbers = [];
    List<int> evenNumbers = [];

    for (var number in numbers) {
      if (number % 2 == 0) {
        oddNumbers.add(number);
      } else {
        evenNumbers.add(number);
      }
    }
    if (oddNumbers.length > 1 && evenNumbers.length > 1) {
      return null;
    }
    if (oddNumbers.length < evenNumbers.length) {
      return oddNumbers.first;
    } else {
      return evenNumbers.first;
    }
  }

  ///Method turns string into integers array
  static List<int> turnStringIntoArray(String userInput) {
    List<String> numbersAsString = userInput.split(",");
    List<int> numbers = [];
    for (String numberString in numbersAsString) {
      numbers.add(int.parse(numberString));
    }
    return numbers;
  }

  ///Method use other methods to find deviant
  static String findDeviant(String inputString) {
    String message = "";
    try {
      message =
          returnDeviantNumber(turnStringIntoArray(inputString)).toString();
    } catch (e) {
      message =
          "Błąd: Aplikacja nie była w stanie przetworzyć wprowadzonych danych :/";
    }
    return message;
  }
}
