import 'dart:convert';
import 'dart:io';

void main(List<String> args) {
  final List<int> list;

  print("enter a list:");

  // expect a list input, exit on error
  try {
    list = json.decode(stdin.readLineSync()!).cast<int>();
  } catch (e) {
    print('invalid input: ${e.toString()}');
    return;
  }

  List<int> evenList = [], oddList = [];

  for (var number in list) {
    switch (number % 2) {
      case 0: // even number
      evenList.add(number);
      break;

      case 1: // odd number
      oddList.add(number);
      break;
    }
  }

  print('even list: ${evenList}');
  print('odd list: ${oddList}');
}