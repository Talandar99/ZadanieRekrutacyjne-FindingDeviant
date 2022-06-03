///class is responsible for creating and manipulating array
class ArrayManipulator {

  ///Method get array of numbers and return deviant number.
  ///Deviant is even number in odd numbers list,
  /// or odd number in even numbers list.
  int returnDeviantNumber(List<int> numbers) {
    List<int> oddNumbers = [];
    List<int> evenNumbers = [];

    for (var number in numbers) {
      if (number % 2 == 0) {
        oddNumbers.add(number);
      } else {
        evenNumbers.add(number);
      }
    }

    if (oddNumbers.length < evenNumbers.length) {
      return oddNumbers.first;
    } else {
      return evenNumbers.first;
    }
  }
}

class viewModel{}
//view model to to co się wy  
