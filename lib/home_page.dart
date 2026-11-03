import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'sidemenu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? namauser;

  @override
  void initState() {
    super.initState();
    _loadUsername();
  }

  // Fungsi untuk mengambil data username yang tersimpan di SharedPreferences
  void _loadUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      namauser = prefs.getString('username') ?? 'admin';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          'Ini adalah halaman User $namauser',
          style: const TextStyle(fontSize: 18),
        ),
      ),
      drawer: const Sidemenu(),
    );
  }
}
