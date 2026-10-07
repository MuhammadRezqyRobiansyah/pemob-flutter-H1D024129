import 'package:flutter/material.dart';
import 'produk_detail.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({super.key});

  @override
  State<ProdukForm> createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukController = TextEditingController();
  final _namaProdukController = TextEditingController();
  final _hargaProdukController = TextEditingController();

  @override
  void dispose() {
    _kodeProdukController.dispose();
    _namaProdukController.dispose();
    _hargaProdukController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            _textboxKodeProduk(),
            const SizedBox(height: 12),
            _textboxNamaProduk(),
            const SizedBox(height: 12),
            _textboxHarga(),
            const SizedBox(height: 20),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  Widget _textboxKodeProduk() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Kode Produk",
        border: OutlineInputBorder(),
      ),
      controller: _kodeProdukController,
    );
  }

  Widget _textboxNamaProduk() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Nama Produk",
        border: OutlineInputBorder(),
      ),
      controller: _namaProdukController,
    );
  }

  Widget _textboxHarga() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Harga",
        border: OutlineInputBorder(),
      ),
      controller: _hargaProdukController,
      keyboardType: TextInputType.number,
    );
  }

  Widget _tombolSimpan() {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          String kodeProduk = _kodeProdukController.text;
          String namaProduk = _namaProdukController.text;
          int harga = int.tryParse(_hargaProdukController.text) ?? 0;
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ProdukDetail(
                kodeProduk: kodeProduk,
                namaProduk: namaProduk,
                hargaProduk: harga,
              ),
            ),
          );
        },
        child: const Text('Simpan'),
      ),
    );
  }
}
