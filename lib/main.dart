import 'package:flutter/material.dart';
import 'package:todo_app/views/create_todo_view.dart';
import 'package:todo_app/views/home_view.dart';
void main(){
runApp(const TodoApp());
}
class TodoApp extends StatelessWidget {
  const TodoApp ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       title :'ToDo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
