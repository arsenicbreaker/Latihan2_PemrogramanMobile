import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Profil Mahasiswa')),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // profile
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 32,
                      child: Icon(Icons.person, size: 32),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Agustia Eriani',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('NIM 3012410031'),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // container
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.email),
                      Icon(Icons.phone),
                      Icon(Icons.location_on),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Daftar Mahasiswa',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),

                // card mahasiswa
                const KartuMahasiswa(
                  nama: 'Drea',
                  nim: '3012410063',
                  prodi: 'Informatika',
                ),
                const KartuMahasiswa(
                  nama: 'Kimi',
                  nim: '3012410012',
                  prodi: 'Informatika',
                ),
                const KartuMahasiswa(
                  nama: 'Antonelli',
                  nim: '3012411263',
                  prodi: 'Informatika',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class KartuMahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
  });

  @override
  Widget build(BuildContext context) {
    // double.infinity membuat lebarnya mengikuti area yang tersedia,
    // seperti container ikon kontak di atas.
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nama,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Text('NIM: $nim'),
          Text('Prodi: $prodi'),
        ],
      ),
    );
  }
}
