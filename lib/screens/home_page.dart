import 'package:flutter/material.dart';
import 'package:mseb/classes/home_page_button.dart';
import 'package:mseb/screens/form_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HomePageButton(
            text: 'Add',
            icon: Icons.add,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FormPage()),
              );
            },
          ),
          const SizedBox(height: 40),
          HomePageButton(
            text: 'Edit',
            icon: Icons.edit,
            onPressed: () {},
          ),
          const SizedBox(height: 40),
          HomePageButton(
            text: 'Upload',
            icon: Icons.upload,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
