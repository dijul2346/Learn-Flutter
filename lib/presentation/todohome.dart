import 'package:flutter/material.dart';
import 'package:screen/domain/todo/todo_model.dart';

class ScreenTodo extends StatefulWidget {
  const ScreenTodo({super.key});

  @override
  State<ScreenTodo> createState() => _ScreenTodoState();
}

class _ScreenTodoState extends State<ScreenTodo> {
  List<TodoModel> todoList = [];
  final todoController = TextEditingController();
  int id = 0;
  int editFlag = 0;
  String editId = '0';
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
                      controller: todoController,
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
                    onPressed: () {
                      addTask();
                      TodoModel t = TodoModel(
                          taskId: id.toString(),
                          taskName: todoController.text,
                          taskStatus: '0');
                      id = id + 1;
                      setState(() {
                        todoList.add(t);
                        editFlag == 0;
                        editTask(editId, todoController.text);

                      });

                      
                    },
                    child: Text(editFlag == 0 ? 'Add' : 'Save'),
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
                  onTap: () {
                    changeStatus(todoList[index].taskId);
                  },
                  leading: Text({index + 1}.toString()),
                  title: Text(todoList[index].taskName),
                  subtitle: Row(
                    children: [
                      Text(
                        todoList[index].taskStatus == '0'
                            ? 'Not Completed'
                            : 'Completed',
                        style: TextStyle(
                            color: todoList[index].taskStatus == '0'
                                ? Colors.red
                                : Colors.green),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              todoController.text = todoList[index].taskName;
                              editFlag = 1;
                              editId = todoList[index].taskId;
                            });
                          },
                          icon: Icon(Icons.edit))
                    ],
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        deleteTask(todoList[index].taskId);
                      },
                      icon: Icon(Icons.delete)),
                );
              },
              itemCount: todoList.length,
            ),
          )
        ],
      )),
    );
  }

  void addTask() {}

  void changeStatus(String id) {
    setState(() {
      for (var doc in todoList) {
        if (doc.taskId == id) {
          doc.taskStatus == '0' ? doc.taskStatus = '1' : doc.taskStatus = '0';
        }
      }
    });
  }

  void deleteTask(String id) {
    setState(() {
      todoList.removeWhere((todo) => todo.taskId == id);
    });
  }

  void editTask(String id, String taskName) {
    setState(() {
      for (var doc in todoList) {
        if (doc.taskId == id) {
          doc.taskName = taskName;
        }
      }
    });
  }
}
