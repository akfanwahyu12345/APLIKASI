import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About This App'),
        backgroundColor: const Color.fromARGB(255, 144, 180, 87),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'App Information',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 144, 180, 87),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Created On:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'February 20, 2024', // Replace with your app's creation date
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Developed By:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ' Aura Relia Fitrah', // Replace with the developer's name or your company name
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Purpose:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Aplikasi ini digunakan untuk memberikan edukasi kepada masyaarkat terkait dengan kolesterol. selain itu aplikasi ini juga dapat digunakan untuk mendeteksi seseorang terkena kolesterol atau tidak', // Replace with the actual purpose of your app
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            // Add more information as needed
          ],
        ),
      ),
    );
  }
}
