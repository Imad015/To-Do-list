class Task {
  String description;
  bool isCompleted = false;

  Task({required this.description});

  void markAsCompleted() {
    isCompleted = true;
  }
}
