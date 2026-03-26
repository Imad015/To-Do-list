import 'List.dart';
import 'dart:io';

void main() {
  List<LIst> list = [];

  while (true) {
    stdout.write(
      "enter 1 to new task or enter 2 to show to tasks and cheked or 3 to exit: ",
    );
    String? input = stdin.readLineSync();
    if (input == '1') {
      stdout.write("enter your task: ");
      list.add(LIst(task: stdin.readLineSync()!));
    } else if (input == '2') {
      if (list.isEmpty) {
        print("the list is empty");
        continue;
      }
      for (var i = 0; i < list.length; i++) {
        print(
          "the task number ${i} is ${list[i].task} ${list[i].check ? "[x]" : "[]"}",
        );
      }
      print("if you wonte to chekd enter number task or not enter (n): ");
      String? b2 = stdin.readLineSync();
      final index = int.tryParse(b2 ?? '');
      if (index != null && index < list.length) {
        list[index].trueCheck();
        print("task is chacked");
      } else if (b2 != 'n') {
        print("enter true value");
      } else {
        break;
      }
    }
  }
}
