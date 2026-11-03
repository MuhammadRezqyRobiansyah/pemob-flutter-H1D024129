import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? namauser;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Fungsi untuk menyimpan username ke Local Storage (SharedPreferences)
  void _saveUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', _usernameController.text);
  }

  // Fungsi untuk menampilkan form input teks
  Widget _showInput(
    TextEditingController namacontroller,
    String placeholder,
    bool isPassword,
  ) {
    return TextField(
      controller: namacontroller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: placeholder,
        border: const UnderlineInputBorder(),
      ),
    );
  }

  // Fungsi untuk menampilkan dialog alert hasil login
  Future<void> _showDialog(String pesan, Widget alamat) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(pesan),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog terlebih dahulu
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => alamat),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _showInput(_usernameController, 'Masukkan Username', false),
            const SizedBox(height: 10),
            _showInput(_passwordController, 'Masukkan Password', true),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text('Login'),
              onPressed: () {
                if (_usernameController.text == 'admin' &&
                    _passwordController.text == 'admin') {
                  // Simpan username ke local storage
                  _saveUsername();
                  // Tampilkan alert berhasil dan arahkan ke HomePage
                  _showDialog('Anda Berhasil Login', const HomePage());
                } else {
                  // Tampilkan alert gagal dan arahkan kembali ke LoginPage
                  _showDialog(
                    'Username dan Password Salah',
                    const LoginPage(),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
