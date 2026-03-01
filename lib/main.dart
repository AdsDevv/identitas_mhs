import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Identitas Mahasiswa',
      home: Scaffold(
        backgroundColor: const Color(0xFFFCF9FF),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Judul Utama
              const Text(
                'IDENTITAS MAHASISWA',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 40),
              // Blok Identitas
              SizedBox(
                width: 350,
                child: Column(
                  children: [
                    _buildInfoRow('NPM', '5230311021'),
                    const SizedBox(height: 12),
                    _buildInfoRow('Nama', 'Andri Adi Saputra'),
                    const SizedBox(height: 12),
                    _buildInfoRow('Prodi', 'Sistem Informasi'),
                    const SizedBox(height: 12),
                    _buildInfoRow('Fakultas', 'Sains & Teknologi'),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              // Universitas
              const Text(
                'UNIVERSITAS TEKNOLOGI YOGYAKARTA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 80,
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ),
        const Text(
          ':   ',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ),
      ],
    );
  }
}
