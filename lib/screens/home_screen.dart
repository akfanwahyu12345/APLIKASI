import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/LDLL.dart';
import 'package:flutter_application_1/screens/alert.dart';
import 'package:flutter_application_1/screens/camerascreen.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/screens/user.dart';
import 'ServiceDetailPage.dart';
import 'KADAR.dart';
import 'HDL.dart';
import 'LDLL.dart';

// import 'camerascreen.dart';

var services = ["Kolesterol", "Pektin", "Makanan", "Gejala", "Berita"];
var selectedServices = 0;

final menus = [FeatherIcons.home, FeatherIcons.alertCircle, FeatherIcons.user];
var selectedmenu = 0;

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      bottomNavigationBar: _bottomNavigationBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              _greetings(context),
              const SizedBox(height: 1),
              _card(),
              const SizedBox(height: 19),
              _search(),
              const SizedBox(height: 20),
              _services(),
              const SizedBox(height: 20),
              _LDL(context),
              const SizedBox(height: 20),
              _HDL(context),
              const SizedBox(height: 20),
              _Kadar(context),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Container _Kadar(BuildContext context) {
    return Container(
      height: 120,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(204, 182, 235, 113),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft, // Menggeser ke kanan
            child: Padding(
              padding: const EdgeInsets.only(left: 10), // Padding ke kanan
              child: Image.asset('assets/images/KADAR.png'),
            ),
          ),
          Align(
            alignment: Alignment.centerRight, // Posisi kiri untuk teks
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: "Selalu ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 60, 92, 48),
                        height: 150 / 100,
                      ),
                      children: [
                        TextSpan(
                          text: "menjaga\n",
                          style: TextStyle(
                            color: Color.fromARGB(255, 81, 117, 39),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(text: "kadar kolesterol\n"),
                        TextSpan(
                          text: "anda setiap harinya",
                          style: TextStyle(
                            color: Color.fromARGB(255, 81, 117, 39),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => KadarScreen()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(
                          10), // Increased padding for better tap area
                      decoration: BoxDecoration(
                        color:
                            Color.fromARGB(255, 246, 255, 243).withOpacity(0.4),
                        border: Border.all(
                          color: Color.fromARGB(255, 245, 255, 241)
                              .withOpacity(0.12),
                          width: 2, // Reduced width for border
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Text(
                        "Selengkapnya",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              10, // Increased font size for better visibility
                          color: Color.fromARGB(255, 137, 160, 126),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _HDL(BuildContext context) {
    return Container(
      height: 120,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(204, 182, 235, 113),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft, // Menggeser ke kanan
            child: Padding(
              padding: const EdgeInsets.only(left: 10), // Padding ke kanan
              child: Image.asset('assets/images/HDL.png'),
            ),
          ),
          Align(
            alignment: Alignment.centerRight, // Posisi kiri untuk teks
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: "Memahami ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 60, 92, 48),
                        height: 150 / 100,
                      ),
                      children: [
                        TextSpan(
                          text: "HDL\n",
                          style: TextStyle(
                            color: Color.fromARGB(255, 81, 117, 39),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(text: "kolesterol\n"),
                        TextSpan(
                          text: "secara mendalam",
                          style: TextStyle(
                            color: Color.fromARGB(255, 81, 117, 39),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HDLScreen()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(
                          10), // Increased padding for better tap area
                      decoration: BoxDecoration(
                        color:
                            Color.fromARGB(255, 246, 255, 243).withOpacity(0.4),
                        border: Border.all(
                          color: Color.fromARGB(255, 245, 255, 241)
                              .withOpacity(0.12),
                          width: 2, // Reduced width for border
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Text(
                        "Selengkapnya",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              10, // Increased font size for better visibility
                          color: Color.fromARGB(255, 137, 160, 126),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _LDL(BuildContext context) {
    return Container(
      height: 120,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(204, 182, 235, 113),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft, // Menggeser ke kanan
            child: Padding(
              padding: const EdgeInsets.only(left: 10), // Padding ke kanan
              child: Image.asset('assets/images/LDL.png'),
            ),
          ),
          Align(
            alignment: Alignment.centerRight, // Posisi kiri untuk teks
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: "Memahami ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 60, 92, 48),
                        height: 150 / 100,
                      ),
                      children: [
                        TextSpan(
                          text: "LDL\n",
                          style: TextStyle(
                            color: Color.fromARGB(255, 81, 117, 39),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(text: "kolesterol\n"),
                        TextSpan(
                          text: "secara mendalam",
                          style: TextStyle(
                            color: Color.fromARGB(255, 81, 117, 39),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LDLScreen()),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(
                          10), // Increased padding for better tap area
                      decoration: BoxDecoration(
                        color:
                            Color.fromARGB(255, 246, 255, 243).withOpacity(0.4),
                        border: Border.all(
                          color: Color.fromARGB(255, 245, 255, 241)
                              .withOpacity(0.12),
                          width: 2, // Reduced width for border
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Text(
                        "Selengkapnya",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                              10, // Increased font size for better visibility
                          color: Color.fromARGB(255, 137, 160, 126),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  final ValueNotifier<int> selectedmenu = ValueNotifier<int>(0);

  Container _bottomNavigationBar(BuildContext context) => Container(
        height: 76,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 30,
              offset: Offset(0, -3),
            ),
          ],
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
        ),
        child: Row(
          children: menus.asMap().entries.map((entry) {
            final int index = entry.key;
            final IconData icon = entry.value;
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  selectedmenu.value = index;
                  switch (index) {
                    case 0:
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HomeScreen())); // Asumsi HomeScreen adalah halaman ini sendiri
                      break;
                    case 1:
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AboutPage()));
                      break;
                    case 2:
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserScreen()));
                      break;
                    // Tambahkan case lainnya sesuai dengan jumlah menu yang Anda miliki
                  }
                },
                child: ValueListenableBuilder<int>(
                  valueListenable: selectedmenu,
                  builder: (context, selectedIndex, child) => Icon(
                    icon,
                    color: index == selectedIndex
                        ? Colors.green
                        : Color.fromARGB(172, 180, 228, 92),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      );

  SizedBox _services() {
    return SizedBox(
      height: 36,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            // Navigasi ke halaman baru dengan parameter index
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ServiceDetailPage(service: services[index]),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: selectedServices == index
                  ? Color.fromARGB(204, 177, 216, 125)
                  : const Color.fromARGB(255, 255, 255, 255),
              border: selectedServices == index
                  ? Border.all(
                      color: const Color.fromARGB(0, 255, 255, 255)
                          .withOpacity(.22),
                      width: 2)
                  : null,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                services[index],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: selectedServices == index
                      ? const Color.fromARGB(255, 255, 255, 255)
                      : const Color.fromARGB(255, 0, 0, 0).withOpacity(.3),
                ),
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: services.length,
      ),
    );
  }

  Widget _search() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      // margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: const Color(0xFFF6F6F6),
          borderRadius: BorderRadius.circular(14)),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              FeatherIcons.search,
              color: Color.fromARGB(255, 178, 223, 142),
            ),
            hintText: "temukan materi lainnya ...",
            hintStyle:
                TextStyle(color: Colors.grey, fontStyle: FontStyle.italic)),
      ),
    );
  }

  AspectRatio _card() {
    return AspectRatio(
      aspectRatio: 336 / 200,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 176, 223, 124),
            borderRadius: BorderRadius.circular(14)),
        child: Stack(children: [
          Image.asset('assets/images/4444.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 66),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: const TextSpan(
                        text: "Selalu ",
                        style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 60, 92, 48),
                            height: 150 / 100),
                        children: const [
                      TextSpan(
                          text: "menjaga\n",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 81, 117, 39),
                              fontWeight: FontWeight.w800)),
                      TextSpan(text: "kadar kolesterol\n"),
                      TextSpan(
                          text: "anda setiap harinya",
                          style: TextStyle(
                              color: Color.fromARGB(255, 81, 117, 39),
                              fontWeight: FontWeight.w800)),
                    ])),
                Container(
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      color:
                          Color.fromARGB(255, 208, 230, 200).withOpacity(0.4),
                      border: Border.all(
                          color: Color.fromARGB(255, 208, 230, 200)
                              .withOpacity(0.12),
                          width: 5),
                      borderRadius: BorderRadius.circular(7)),
                  child: const Text(
                    "Be Healthy",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Color.fromARGB(255, 137, 160, 126)),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }

  Padding _greetings(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Hello Human!',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 71, 104, 33))),
          Stack(children: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CameraScreen()),
                  );
                },
                icon: const Icon(
                  FeatherIcons.camera,
                  color: Color.fromARGB(255, 71, 104, 33),
                )),
            Positioned(
              right: 8,
              top: 8,
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 197, 216, 180),
                    borderRadius: BorderRadius.circular(15 / 2)),
                child: const Center(
                    child: const Text(
                  '!',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 71, 104, 33)),
                )),
              ),
            )
          ])
        ],
      ),
    );
  }
}
