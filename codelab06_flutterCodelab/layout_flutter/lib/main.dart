import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Panderman merupakan salah satu gunung '
        'yang terletak di Kota Batu, Malang, Jawa Timur. '
        'Gunung ini menjadi tujuan favorit para pendaki '
        'karena jalurnya yang relatif mudah serta pemandangan '
        'kota Batu dan Malang dari puncaknya yang indah. \n\n'
        'Nama: Fatikah Salsabilla\n'
        'NIM : 2341720003',
        softWrap: true,
      ),
    );
    // titleSection sesuai soal
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // padding 32 di setiap sisi
      child: Row(
        children: [
          Expanded(
            // soal 1: Column di dalam Expanded
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // posisi di awal baris
              children: [
                // soal 2: baris pertama teks dalam Container padding bawah 8
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey, // warna abu-abu
                  ),
                ),
              ],
            ),
          ),
          // soal 3: ikon bintang merah
          const Icon(Icons.star, color: Colors.red),
          const Text("41"),
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Demo Wisata')),
        body: ListView(children: [Image.asset('assets/images/panderman.jpg', width: 600, height: 240, fit: BoxFit.cover,),titleSection, buttonSection, textSection]),
        // ganti Hello World dengan titleSection
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
