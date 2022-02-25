import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late String userToDo;
  List todoList = [];



  @override
  void initState() {
    super.initState();



    todoList.addAll(['Дипломдық проект құрастыру', 'Жұмыс істеу', 'Сабақ оқу', 'CS GO ойнау', 'Ұйықтау']);
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Тізім құрау'),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                key: Key(todoList[index]),
                child: Card(
                  child: ListTile(
                    title: Text(todoList[index]),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        setState(() {
                          todoList.removeAt(index);
                        });
                      },
                    ),
                  ),
                ),

                onDismissed: (direction) {
                  //if(direction == DismissDirection.startToEnd)
                  setState(() {
                    todoList.removeAt(index);
                  });
                },
              );
            }
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            showDialog(context: context, builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Добавить элемент', textAlign: TextAlign.center),
                content: TextField(
                  onChanged: (String value) {
                    userToDo = value;
                  },
                ),
                actions: [
                  ElevatedButton
                    (onPressed: () {
                    Navigator.of(context).pop();
                  }, child: Text('Отмена')),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      todoList.add(userToDo);
                    });

                    Navigator.of(context).pop();
                  },
                      child: Text('Добавить')),
                ],
              );
            });
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      );
  }
}