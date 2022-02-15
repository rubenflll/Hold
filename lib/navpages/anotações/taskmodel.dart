import 'package:flutter/material.dart';
import 'package:url_launcher_example/navpages/anota%C3%A7%C3%B5es/main.dart';

import 'TaskModel.dart';

class tarefa extends StatefulWidget {
  @override
  _tarefa createState() => _tarefa();
}

class _tarefa extends State<tarefa> {
  final textController = TextEditingController();

  List<TaskModel> tasks = [];

  TaskModel currentTask;

  @override
  Widget build(BuildContext context) {
    final TodoHelper _todoHelper = TodoHelper();
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'lembretes',
          ),
        ),
        backgroundColor: Colors.purple[400],
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            TextField(
              controller: textController,
            ),
            FlatButton(
              child: Text("Insert"),
              onPressed: () {
                currentTask = TaskModel(name: textController.text);
                _todoHelper.insertTask(currentTask);
              },
              color: Colors.purple[400],
              textColor: Colors.white,
            ),
            FlatButton(
              child: Text("Show All Task"),
              onPressed: () async {
                List<TaskModel> list = await _todoHelper.getAllTask();
              },
              color: Colors.purple[400],
              textColor: Colors.white,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text("${tasks[index].id}"),
                    title: Text("${tasks[index].name}"),
                  );
                },
                separatorBuilder: (context, index) => Divider(),
                itemCount: tasks.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
