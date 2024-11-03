import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true, // Centers the title
          title: Text(
            'Biodata saya',
            style: TextStyle(
              fontSize: 24, // Adjusts the font size of the title
              fontWeight: FontWeight.bold, // Optional: makes the text bold
            ),
          ),
        ),
        body: BiodataPage(),
      ),
    );
  }
}

class BiodataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  'assets/nathan.jpg'), // Place your photo in assets folder
            ),
            SizedBox(height: 15),
            Text(
              'I Gusti Nathan Agung Tanaka',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'NIM: 42230038',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            Text(
              'Prodi: Teknologi Informasi',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            Text(
              'Fakultas: Teknik Informatika (FTI)',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 20),
            Text(
              'saya adalah orang yang ingin dan mau untuk belajar. dan mampu untuk mengetahui kesalahan saya sendiri',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Kemampuan:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkillItem(skill: 'Programming'),
                SkillItem(skill: 'Web Design'),
                SkillItem(skill: 'Data Analysis'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final String skill;

  SkillItem({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        skill,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
