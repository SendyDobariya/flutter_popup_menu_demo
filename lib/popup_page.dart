import 'package:flutter/material.dart';
import 'package:flutter_application_2/settingPage.dart';

enum MenuItems { item1, item2, item3 }

class PopUpScreen extends StatefulWidget {
  const PopUpScreen({Key? key}) : super(key: key);

  @override
  State<PopUpScreen> createState() => _PopUpScreenState();
}

class _PopUpScreenState extends State<PopUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popup Page'),
        actions: [
          PopupMenuButton(
            child: const Icon(Icons.more_vert),
            onSelected: (value) {
              if (value == MenuItems.item1) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingPage()));
              } else if (value == MenuItems.item2) {}
            },
            itemBuilder: (
              context,
            ) =>
                const [
              PopupMenuItem(value: MenuItems.item1, child: Text('Item 1')),
              PopupMenuItem(value: MenuItems.item2, child: Text('Item 2')),
              PopupMenuItem(value: MenuItems.item3, child: Text('Item 3')),
            ],
          ),
        ],
      ),
    );
  }
}
