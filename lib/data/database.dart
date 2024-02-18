import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  //refrence the box

  final _myBox = Hive.box('mybox');

  //run if first time opening this app
  void createInitialData() {
    toDoList = [
      ["make tut", false],
      ["do exercise", false],
    ];
  }
  //load data from database

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
