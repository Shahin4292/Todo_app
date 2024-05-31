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
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Add todo"),
                          IconButton(onPressed: () {
                            Navigator.pop(context);
                          }, icon: const Icon(Icons.cancel))
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        maxLines: 4,
                        decoration: const InputDecoration(
                          // fillColor: Colors.grey,
                          // filled: true,
                          hintText: "Add todo work",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                                side: BorderSide.none),
                            fixedSize:
                                Size(MediaQuery.sizeOf(context).width, 30)),
                        onPressed: () {},
                        child: const Text(
                          "Add",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
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
                        title: const Text("Edit"),
                        onTap: () {},
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
