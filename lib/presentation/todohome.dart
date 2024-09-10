import 'package:flutter/material.dart';
import 'package:screen/domain/todo/todo_model.dart';

class ScreenTodo extends StatefulWidget {
  const ScreenTodo({super.key});

  @override
  State<ScreenTodo> createState() => _ScreenTodoState();
}

class _ScreenTodoState extends State<ScreenTodo> {
  List<TodoModel> todoList = [
    TodoModel(taskId: '1', taskName: 'A', taskStatus: '0'),
    TodoModel(taskId: '2', taskName: 'B', taskStatus: '0'),
    TodoModel(taskId: '3', taskName: 'C', taskStatus: '0'),
    TodoModel(taskId: '4', taskName: 'D', taskStatus: '0'),
    TodoModel(taskId: '5', taskName: 'E', taskStatus: '0')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TodoApp',
          style: TextStyle(
              color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .2,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Employee ID Cannot be empty!';
                        } else {
                          return null;
                        }
                      },
                      decoration: const InputDecoration(
                          hintText: 'Enter Task',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Action to perform when the button is pressed
                      print('Submit button pressed');
                    },
                    child: Text('Submit'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .6,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Text({index + 1}.toString()),
                          title:Text(todoList[index].taskName),
                        );
                      },
                      itemCount: todoList.length,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
