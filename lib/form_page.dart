import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  int _selectedIndex = 0;
  // Daftar halaman
  final List<Widget> _pages = [
    // Halaman 1
    Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          color: Colors.blueGrey,
          child: Icon(Icons.access_alarm_sharp, size: 100),
        ),
      ],
    ),
    // Halaman 2 layout->column
    Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          color: Colors.amber,
          child: Column(
            children: [
              Text('Saya sedang praktik flutter'),
              Text('Saya sedang praktik flutter'),
              Text('Saya sedang praktik flutter'),
              Text('Saya sedang praktik flutter'),
            ],
          ),
        ),
      ],
    ),
    // Halaman 3 layout->row
    Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          color: Colors.green,
          child: Row(
            children: [
              Icon(Icons.account_circle_outlined, size: 50),
              Icon(Icons.account_circle_outlined, size: 20),
              Icon(Icons.account_circle_outlined, size: 20),
              Icon(Icons.account_circle_outlined, size: 20),
            ],
          ),
        ),
      ],
    ),
    // Halaman 4 (Form dengan TextField + Button)
    Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              // TextField
              TextField(
                decoration: InputDecoration(
                  labelText: "Masukkan teks",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              // Button tanpa icon
              ElevatedButton(
                onPressed: () {},
                child: const Text("Button Tanpa Icon"),
              ),
              const SizedBox(height: 10),
              // Button dengan icon
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.send),
                label: const Text("Button Dengan Icon"),
              ),
            ],
          ),
        ),
      ],
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Flutter Praktik 2',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: const [
          Icon(Icons.account_box, color: Colors.white),
          Icon(Icons.access_alarm_outlined, color: Colors.white),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // biar bisa lebih dari 3 item
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Alarm'),
          BottomNavigationBarItem(icon: Icon(Icons.text_fields), label: 'Text'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.send), label: 'Form'),
        ],
      ),
    );
  }
}
