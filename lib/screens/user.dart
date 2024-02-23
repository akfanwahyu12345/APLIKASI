import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('User Profile'),
        backgroundColor: const Color.fromARGB(
            255, 144, 180, 87), // Adjust the color to match the screenshot
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 144, 180,
                  87), // Adjust the color to match the screenshot
            ),
            padding: EdgeInsets.symmetric(
                vertical: 48), // Adjust the padding to match the screenshot
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40, // Adjust the size as per the screenshot
                  backgroundImage: AssetImage(
                      'assets/images/mbak.png'), // Correctly reference the asset
                ),
                SizedBox(height: 8),
                Text(
                  'Aura Relia Fitrah',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize:
                        20, // Adjust the font size to match the screenshot
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(FeatherIcons.user,
                color: Color.fromARGB(255, 96, 153, 43)),
            title: Text('Aura Relia Fitrah'),
            subtitle: Text('User'),
          ),
          ListTile(
            leading: Icon(FeatherIcons.calendar,
                color: Color.fromARGB(255, 96, 153, 43)),
            title: Text('Birthday'),
            subtitle: Text('26 November 2003'),
          ),
          ListTile(
            leading: Icon(FeatherIcons.phone,
                color: Color.fromARGB(255, 96, 153, 43)),
            title: Text('Phone'),
            subtitle: Text('081252601926'),
          ),
          ListTile(
            leading: Icon(FeatherIcons.instagram,
                color: Color.fromARGB(255, 96, 153, 43)),
            title: Text('Instagram account'),
            subtitle: Text('@reliafitrah'),
          ),
          ListTile(
            leading: Icon(FeatherIcons.mail,
                color: Color.fromARGB(255, 96, 153, 43)),
            title: Text('Email'),
            subtitle: Text('aura.relia.2203516@students.um.ac.id'),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: ElevatedButton(
          //     style: ElevatedButton.styleFrom(
          //       primary: Color.fromARGB(255, 162, 199, 114), // background color
          //       onPrimary: Colors.white, // foreground (text) color
          //       shape: StadiumBorder(),
          //     ),
          //     onPressed: () {
          //       // TODO: Implement profile editing functionality
          //     },
          //     // z
          //   ),
          // ),
        ],
      ),
    );
  }
}
