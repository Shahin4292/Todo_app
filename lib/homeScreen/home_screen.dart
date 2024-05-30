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
      floatingActionButton: FloatingActionButton(onPressed: () { 
        
      },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) => (
          const ListTile(
            title: Text("I have to do my Homework for office"),
            leading: Text("pending"),
          )
          ),
      ),
    );
  }
}
