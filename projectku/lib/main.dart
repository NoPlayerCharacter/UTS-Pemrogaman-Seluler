import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BiodataScreen(),
    );
  }
}

class BiodataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar agar responsif
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata Mahasiswa'),
      ),
      body: Center(
        child: Container(
          width: screenSize.width * 0.9, // Sesuaikan dengan lebar layar
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Foto Profil Mahasiswa
              CircleAvatar(
                radius: screenSize.width * 0.2, // Ukuran menyesuaikan layar
                backgroundImage: NetworkImage(
                  'https://www.example.com/path/to/photo.jpg', // Ganti URL dengan foto mahasiswa
                ),
              ),
              SizedBox(height: 20),
              // Nama Mahasiswa
              Text(
                'Nama Mahasiswa',
                style: TextStyle(
                  fontSize: screenSize.width * 0.06, // Menyesuaikan ukuran font
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // NIM
              Text(
                'NIM: 1234567890',
                style: TextStyle(
                  fontSize: screenSize.width * 0.05,
                ),
              ),
              SizedBox(height: 10),
              // Jurusan
              Text(
                'Jurusan: Teknik Informatika',
                style: TextStyle(
                  fontSize: screenSize.width * 0.05,
                ),
              ),
              SizedBox(height: 20),
              // Informasi Tambahan (Opsional)
              Text(
                'Universitas: Universitas XYZ\nAngkatan: 2021\nHobi: Membaca, Coding, Bermain Musik',
                style: TextStyle(
                  fontSize: screenSize.width * 0.04,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
