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
  late String editId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Todo App',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 23),
        ),
        backgroundColor: const Color.fromARGB(255, 35, 34, 34),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .12,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: todoController,
                      ),
                    )),
                    ElevatedButton(
                        onPressed: () {
                          editFlag == 0
                              ? addTask()
                              : editTask(editId, todoController.text);
                        },
                        child: Text(editFlag == 0 ? 'Add' : 'Save')),
                        Visibility(
                          visible: editFlag == 1,
                          child: ElevatedButton(
                        onPressed: () {
                          todoController.text = '';
                        },
                        child: const Text('X')))
                  ],
                ),
              ),
            ),
            const Divider(),
            SizedBox(
                height: MediaQuery.of(context).size.height * .8,
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
                                ? 'Pending'
                                : 'Completed',
                            style: TextStyle(
                                color: todoList[index].taskStatus == '0'
                                    ? Colors.red
                                    : Colors.green),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {
                                //deleteTask(todoList[index].taskId);
                                setState(() {
                                  editFlag = 1;
                                  todoController.text =
                                      todoList[index].taskName;
                                  editId = todoList[index].taskId;
                                });
                              },
                              icon: const Icon(Icons.edit)),
                          IconButton(
                              onPressed: () {
                                deleteTask(todoList[index].taskId);
                              },
                              icon: const Icon(Icons.delete))
                        ],
                      ),
                      // trailing: IconButton(
                      //     onPressed: () {
                      //       deleteTask(todoList[index].taskId);
                      //     },
                      //     icon: const Icon(Icons.delete)),
                    );
                  },
                  itemCount: todoList.length,
                ))
          ],
        ),
      ),
    );
  }

  void addTask() {
    TodoModel t = TodoModel(
        taskId: id.toString(), taskName: todoController.text, taskStatus: '0');
    id = id + 1;
    setState(() {
      todoList.add(t);
      todoController.text = '';
    });
  }

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
      todoList.removeWhere((element) => element.taskId == id);
    });
  }

  void editTask(String id, String taskName) {
    setState(() {
      for (var doc in todoList) {
        if (doc.taskId == id) {
          if (taskName.isEmpty) {
          taskName = doc.taskName;
         }
          doc.taskName = taskName;
          editFlag = 0;
          todoController.text = '';
        }
      }
    });
  }
}
