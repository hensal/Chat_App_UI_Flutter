import 'package:flutter/material.dart';
import 'package:my_first_project/Pages/chat_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const ChatPage(),
    const Center(child: Text("Channels")),
    const Center(child: Text("Profile"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Chats"),
          BottomNavigationBarItem(
              icon: Icon(Icons.group_work), label: "Channels"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "Profile"),
        ],
      ),
    );
  }
}
