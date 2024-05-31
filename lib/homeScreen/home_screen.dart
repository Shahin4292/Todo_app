import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const UpdateNewModal();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) => (ListTile(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Action"),
                    actions: [
                      ListTile(
                        leading: const Icon(Icons.edit),
                        title: const Text("Update"),
                        onTap: () {
                          Navigator.pop(context);
                          showModalBottomSheet(context: context, builder: (context){
                            return const UpdateNewModal();
                          });
                        },
                      ),
                      const Divider(
                        height: 0,
                      ),
                      ListTile(
                        leading: const Icon(Icons.delete),
                        title: const Text("Delete"),
                        onTap: () {},
                      )
                    ],
                  );
                });
          },
          title: const Text("I have to do my Homework"),
          subtitle: const Text("4-04-20"),
          trailing: const Text("pending"),
          leading: CircleAvatar(
            child: Text('${index + 1}'),
          ),
        )),
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 4,
          );
        },
      ),
    );
  }
}

