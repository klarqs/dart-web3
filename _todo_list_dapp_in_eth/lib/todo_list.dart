import 'package:_todo_list_dapp_in_eth/todo_list_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {
  final TextEditingController input = TextEditingController();

  TodoList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var listModel = Provider.of<TodoListModel>(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("TodoList"),
      ),
      body: listModel.isLoading
          ? const Center(
              child: CircularProgressIndicator(
                strokeWidth: 1,
              ),
            )
          : Column(
              children: [
                Expanded(
                  flex: 4,
                  child: ListView.builder(
                    itemCount: listModel.taskCount,
                    itemBuilder: (context, index) => ListTile(
                      title: Text(
                        listModel.todos[index].taskName!.capitalize(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 6,
                          child: TextField(
                            controller: input,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: const BorderSide(
                                  color: Color(0xffDADEE3),
                                  width: .4,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Colors.white.withOpacity(.3),
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          flex: 2,
                          child: ElevatedButton(
                            onPressed: () => {
                              listModel.addTask(input.text),
                              input.clear(),
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              shadowColor: Colors.transparent,
                              onPrimary: Colors.white,
                              onSurface: Colors.blue.shade800,
                              elevation: 0,
                              splashFactory: NoSplash.splashFactory,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text('ADD'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
