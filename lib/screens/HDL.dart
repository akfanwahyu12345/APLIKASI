import 'package:flutter/material.dart';

class HDLScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 219, 248, 185), // Lighter shade of green
                  Color.fromARGB(255, 255, 255, 255), // White color
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              title: Text('HDL'),
              backgroundColor:
                  Colors.transparent, // Makes the app bar transparent
              elevation: 0, // Removes shadow from the app bar
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top +
                AppBar().preferredSize.height,
            left: 0,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(
                  16.0), // Add padding to the whole content
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'HDL (High-Density Lipoprotein)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(
                          255, 0, 0, 0), // Black text color for contrast
                      fontSize: 14, // Font size for readability
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                      'Dikenal sebagai kolesterol “baik”, HDL membantu membersihkan kolesterol LDL dari arteri dan membawa ke hati untuk dikeluarkan dari tubuh. Fungsi HDL : \n'),
                  Image.asset(
                      'assets/images/HDL1.png'), // Make sure this asset exists in your project
                  SizedBox(height: 10),
                  Text(
                      'a. Mengangkat kelebihan kolesterol dari seluruh tubuh, termasuk di area pembuluh darah, dan membawanya kembali ke hati untuk dibuang.\n'),
                  SizedBox(height: 10),
                  Text(
                      'b. Mencegah penumpukan plak di arteri, sehingga mengurangi risiko penyumbatan dan penyakit kardiovaskular.\n'),
                  SizedBox(height: 10),
                  Text(
                      'c. Memiliki sifat antioksidan dan anti-inflamasi, yang mendukung kesehatan pembuluh darah secara keseluruhan.\n'),
                  SizedBox(height: 10),
                  Text(
                    'Manfaat memiliki HDL tinggi :',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text('Menurunkan Resiko '),
                  SizedBox(height: 10),
                  Text('1. Serangan Jantung'),
                  SizedBox(height: 10),
                  Text('2. Stroke '),
                  SizedBox(height: 10),
                  Text('3. Penyakit Arteri Parifer '),
                  SizedBox(height: 10),
                  Text('4. Penyakit alzheimer '),
                  // Add more widgets as needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
