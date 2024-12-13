import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = 'Akito'; 
  final TextEditingController _nameController = TextEditingController(); 

  @override
  void initState() {
    super.initState();
    _nameController.text = name; 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Профиль'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50),
            ),
            SizedBox(height: 20), 
            TextField(
              controller: _nameController, 
              decoration: InputDecoration(
                labelText: 'Имя',
                border: OutlineInputBorder(), 
              ),
              onChanged: (value) {
                setState(() {
                  name = value; 
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
