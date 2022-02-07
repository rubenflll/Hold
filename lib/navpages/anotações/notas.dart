import 'package:flutter/material.dart';
import 'package:url_launcher_example/navpages/anota%C3%A7%C3%B5es/task.dart';

//class criada para ser ligada ao bottomNavigationBar
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ller = TextEditingController();

  List<TaskModel> tasks = [];

  TaskModel tarefas;

  get textController => null;

  @override
  Widget build(BuildContext context) {
    final TodoHelper _todoHelper = TodoHelper();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        title: Center(
          child: Text("Lembretes"),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            TextField(
              controller: textController,
            ),
            FlatButton(
              child: Text("inserir"),
              onPressed: () {
                tarefas = TaskModel(name: textController.text);
                _todoHelper.insertTask(tarefas);
              },
              color: Colors.purple[500],
              textColor: Colors.white,
            ),
            FlatButton(
              child: Text("mostrar lembrete"),
              onPressed: () async {
                List<TaskModel> list = await _todoHelper.getAllTask();
                setState(() {
                  tasks = list;
                });
              },
              color: Colors.purple[500],
              textColor: Colors.white,
            ),
            FlatButton(
              child: Text("apagar"),
              onPressed: () {},
              color: Colors.purple[500],
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
