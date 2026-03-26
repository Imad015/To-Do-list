import 'List.dart';
import 'dart:io';

void main() {
  List<Task> tasks = [];

  while (true) {
    stdout.write('Enter 1 to add a new task, 2 to view tasks, or 3 to exit: ');
    String? userInput = stdin.readLineSync();

    if (userInput == '1') {
      stdout.write('Enter task description: ');
      String? taskDescription = stdin.readLineSync();
      if (taskDescription != null && taskDescription.isNotEmpty) {
        tasks.add(Task(description: taskDescription));
        print('Task added successfully!\n');
      } else {
        print('Invalid input. Please enter a valid task.\n');
      }
    } else if (userInput == '2') {
      _displayAndManageTasks(tasks);
    } else if (userInput == '3') {
      print('Goodbye!');
      break;
    } else {
      print('Invalid choice. Please enter 1, 2, or 3.\n');
    }
  }
}

void _displayAndManageTasks(List<Task> tasks) {
  if (tasks.isEmpty) {
    print('The task list is empty.\n');
    return;
  }

  for (int taskIndex = 0; taskIndex < tasks.length; taskIndex++) {
    final task = tasks[taskIndex];
    final statusIcon = task.isCompleted ? '[✓]' : '[ ]';
    print('Task $taskIndex: ${task.description} $statusIcon');
  }

  print('\nEnter the task number to mark as completed, or enter (n) to skip: ');
  String? selectedInput = stdin.readLineSync();

  if (selectedInput == 'n') {
    print('');
    return;
  }

  final selectedTaskIndex = int.tryParse(selectedInput ?? '');
  if (selectedTaskIndex != null &&
      selectedTaskIndex >= 0 &&
      selectedTaskIndex < tasks.length) {
    tasks[selectedTaskIndex].markAsCompleted();
    print('Task marked as completed!\n');
  } else {
    print('Invalid input. Please enter a valid task number.\n');
  }
}
