//for updating and fetching data
import 'package:flutter/material.dart';
import 'package:todoey/models/tasks.dart';
import 'dart:collection';
class TasksData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),];

UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);
int get taskCount {
 return _tasks.length;}
 
 void addTask (String newTextTittle){
   final task =Task(name: newTextTittle);
   _tasks.add(task);
   notifyListeners();
 }
 void updateTask(Task task){
  task.toogleDone();
notifyListeners();
 }
 void deleteTasks(Task task){
  _tasks.remove(task);
  notifyListeners();
 }}