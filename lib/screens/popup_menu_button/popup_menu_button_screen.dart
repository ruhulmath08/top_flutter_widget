import 'package:flutter/material.dart';

class PopupMenuButtonScreen extends StatefulWidget {
  final String title;

  const PopupMenuButtonScreen({Key? key, required this.title})
      : super(key: key);
  @override
  _PopupMenuButtonScreenState createState() => _PopupMenuButtonScreenState();
}

class _PopupMenuButtonScreenState extends State<PopupMenuButtonScreen> {
  final List<MenuModel> menuList = MenuModel.fetchAll();
  String bodyText = 'Please select a menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => menuList
                .map(
                  (menu) => PopupMenuItem(
                    onTap: () {
                      setState(() {
                        bodyText = menu.title;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Press on: ${menu.title}'),
                          duration: const Duration(seconds: 1),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Icon(menu.iconData, color: Colors.grey),
                        const SizedBox(width: 10),
                        Text(menu.title),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
      body: Center(
        child: Text(bodyText),
      ),
    );
  }
}

class MenuModel {
  final String title;
  final IconData iconData;

  MenuModel({
    required this.title,
    required this.iconData,
  });

  static List<MenuModel> fetchAll() => [
        MenuModel(title: 'Rate app', iconData: Icons.star),
        MenuModel(title: 'About Us', iconData: Icons.people),
        MenuModel(title: 'Setting', iconData: Icons.settings),
        MenuModel(title: 'Logout', iconData: Icons.exit_to_app_rounded),
      ];
}
