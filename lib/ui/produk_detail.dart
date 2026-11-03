import 'package:flutter/material.dart';

class ProdukDetail extends StatelessWidget {
  final String kodeProduk;
  final String namaProduk;
  final int hargaProduk;

  const ProdukDetail({
    super.key,
    required this.kodeProduk,
    required this.namaProduk,
    required this.hargaProduk,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Produk"),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kode Produk : $kodeProduk",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              "Nama Produk : $namaProduk",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              "Harga Produk : $hargaProduk",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
