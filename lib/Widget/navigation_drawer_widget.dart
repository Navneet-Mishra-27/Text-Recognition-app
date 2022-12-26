import 'package:flutter/material.dart';
import 'package:text_recognition/pages/about_us.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = 'Textify';
    final email = 'textify@abs.com';
    final urlImage =
        'https://us.123rf.com/450wm/barks/barks1902/barks190200077/117189210-ai-artificial-intelligence-image-illustration-.jpg?ver=6';
    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: <Widget>[
            buildheader(
              urlImage: urlImage,
              name: name,
              email: email,
            ),
            const SizedBox(height: 24),
            buildMenuItem(
              text: "About Us",
              icon: Icons.people,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 16),
            buildMenuItem(
              text: 'Updates',
              icon: Icons.update,
              onClicked: () => selectedItem(context, 1),
            ),
            /*const SizedBox(height: 24),
            Divider(color: Colors.white70),
            const SizedBox(height: 10),*/
          ],
        ),
      ),
    );
  }

  Widget buildheader({
    required String urlImage,
    required String name,
    required String email,
  }) =>
      InkWell(
        onTap: null,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AboutUs(),
        ));
        break;
    }
  }
}
