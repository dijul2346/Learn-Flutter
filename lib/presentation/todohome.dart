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
    TodoModel(taskId: '5', taskName: 'A', taskStatus: '0'),
    TodoModel(taskId: '6', taskName: 'B', taskStatus: '0'),
    TodoModel(taskId: '7', taskName: 'C', taskStatus: '0'),
    TodoModel(taskId: '8', taskName: 'D', taskStatus: '0'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Text(
          "Todo APP",
          style: TextStyle(
              color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .1,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      //controller: nameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Name Cannot be empty!';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Add Task',
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Add"),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .9,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text({index+1}.toString()),
                  title: Text(todoList[index].taskName),
                );
              },
              itemCount: todoList.length,
            ),
          )
        ],
      )),
    );
  }
}