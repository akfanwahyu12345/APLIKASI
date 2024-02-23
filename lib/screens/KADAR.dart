import 'package:flutter/material.dart';

class KadarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kadar Kolesterol'),
      ),
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
              title: Text('Kadar Kolesterol'),
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
                  10.0), // Add padding to the whole content
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 0),
                  Text(
                    'Sehat Memperhatikan kadar Kolesterol',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(
                          255, 0, 0, 0), // Black text color for contrast
                      fontSize: 14, // Font size for readability
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                      'Kadar kolesterol yang ideal dalam darah bervariasi berdasarkan usia, jenis kelamin, dan kondisi kesehatan individu. Berikut adalah panduan umum kadar kolesterol :  \n'),
                  Image.asset(
                      'assets/images/kadarkolesterol.png'), // Make sure this asset exists in your project
                  SizedBox(height: 10),
                  Text(
                      'a. Kadar kolesterol normal dalam tubuh yaitu < 200 mg/dl, '),
                  SizedBox(height: 10),
                  Text(
                      'b. Kadar kolesterol borderline sekitar 200-239 mg/dl dengan '),
                  SizedBox(height: 10),
                  Text('c. Kadar kolesterol tinggi mencapai ≥ 240 mg/dl. \n'),

                  // Text(
                  //   'Bahaya LDL tinggi : ',
                  //   style: TextStyle(fontWeight: FontWeight.bold),
                  // ),
                  // SizedBox(height: 10),
                  // Text('Menurunkan Resiko '),
                  // SizedBox(height: 10),
                  // Text('1. Penumpukan plak di arteri (aterosklerosis)'),
                  // SizedBox(height: 10),
                  // Text('2. Penyempitan pembuluh darah'),
                  // SizedBox(height: 10),
                  // Text('3. Serangan jantung'),
                  // SizedBox(height: 10),
                  // Text('4. Stroke '),
                  // SizedBox(height: 10),
                  // Text('5. Penyakit arteri perifer '),
                  // // Add more widgets as needed
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
