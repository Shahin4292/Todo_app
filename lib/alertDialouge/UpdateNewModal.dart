import 'package:flutter/material.dart';

class UpdateNewModal extends StatelessWidget {
  const UpdateNewModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Update todo"),
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
              "Update",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
