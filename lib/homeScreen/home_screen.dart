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
                      const Text("Add todo"),
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
                      const SizedBox(height: 20,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6),),
                          fixedSize: Size(MediaQuery.sizeOf(context).width, 30)
                        ),
                        onPressed: () {},
                        child: const Text("Add"),
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
          title: const Text("I have to do my Homework for office"),
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
