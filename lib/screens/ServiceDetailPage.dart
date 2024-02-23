import 'package:flutter/material.dart';

class ServiceDetailPage extends StatelessWidget {
  final String service;

  ServiceDetailPage({required this.service});

  @override
  Widget build(BuildContext context) {
    Widget contentWidget;

    switch (service) {
      case 'Kolesterol':
        contentWidget = RichText(
          text: const TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 16.0),
            children: [
              TextSpan(
                text:
                    'Kolesterol merupakan zat lemak yang secara alami diproduksi oleh tubuh dan juga terdapat dalam beberapa makanan. Kadar kolesterol terbagi menjadi dua jenis utama :\n\n',
              ),
              TextSpan(
                text: 'Kolesterol LDL (Low-Density Lipoprotein) : \n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'dikenal sebagai kolesterol “jahat”, LDL bertanggung jawab atas menyebarkan lemak di arteri yang dapat menyebabkan penyumbatan dan penyakit jantung.\n\n',
              ),
              TextSpan(
                text: 'Kolesterol HDL (High-Density Lipoprotein) :\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'dikenal sebagai kolesterol “baik”, HDL membantu membersihkan kolesterol LDL dari arteri dan membawa ke hati untuk dikeluarkan dari tubuh.\n\n',
              ),
              TextSpan(
                text:
                    'Kadar kolesterol yang ideal dalam darah bervariasi berdasarkan usia, jenis kelamin, dan kondisi kesehatan individu. Berikut adalah panduan umum kadar kolesterol :\n\n',
              ),
              TextSpan(
                text:
                    'Kadar kolesterol normal dalam tubuh yaitu < 200 mg/dl,\n',
              ),
              TextSpan(
                text: 'Kadar kolesterol borderline sekitar 200-239 mg/dl,\n',
              ),
              TextSpan(
                text: 'Kadar kolesterol tinggi mencapai ≥ 240 mg/dl.\n\n',
              ),
              TextSpan(
                text: 'Ciri-ciri Kadar Kolesterol Tinggi :\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'a. Munculnya plak berwarna kuning atau oranye di kelopak mata, terutama di bagian bawah dekat hidung\n\n',
              ),
              TextSpan(
                text:
                    'b. Kelopak mata berwarna merah muda, tetapi tanda ini tidak selalu menjadi tanda-tanda pengidap kadar kolesterol tinggi, namun ini juga merupakan sebuah tanda-tanda indikasi pengidap kolesterol tinggi\n\n',
              ),
              TextSpan(
                text: 'c. Kuku kaki berwarna kekuningan\n\n',
              ),
              TextSpan(
                text:
                    'd. Munculnya garis-garis gelap di bawah kuku kaki searah pertumbuhannya\n\n',
              ),
              TextSpan(
                text: 'e. Kuku kaki pecah-pecah (seperti retak)\n\n',
              ),
              TextSpan(
                text: 'f. Kuku kaki terlihat menjadi lebih tebal dan rapuh',
              ),
            ],
          ),
        );
        break;
      case 'Pektin':
        contentWidget = RichText(
          text: const TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 16.0),
            children: [
              TextSpan(
                text: 'Pektin ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'adalah serat larut yang ditemukan dalam buah-buahan, termasuk apel. Kulit apel merupakan sumber pektin yang baik, kulit apel mengandung pektin lebih banyak dibandingkan daging buahnya. Pektin dapat dikonsumsi dalam bentuk suplemen atau dapat dijadikan bubuk pektin yang dapat dikonsumsi dengan cara diseduh menjadi minuman.\n\n',
              ),
              TextSpan(
                text: 'Manfaat pektin bagi kesehatan :\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    '1. Menurunkan kolesterol : membantu menurunkan kadar kolesterol LDL (jahat) dengan mengikat kolesterol di usus dan membuangnya melalui tinja.\n\n',
              ),
              TextSpan(
                text:
                    '2. Menurunkan gula darah : membantu memperlambat pencernaan gula, yang dapat membantu menjaga kadar gula darah tetap stabil.\n\n',
              ),
              TextSpan(
                text:
                    '3. Menurunkan tekanan darah : membantu menurunkan tekanan darah dengan meningkatkan produksi oksida nitrat yang merupakan vasodilator.\n\n',
              ),
              TextSpan(
                text:
                    '4. Meningkatkan pencernaan : membantu meningkatkan pencernaan dengan meningkatkan massa feses dan membantu pergerakan usus.\n\n',
              ),
              TextSpan(
                text:
                    '5. Meningkatkan sistem kekebalan tubuh : membantu meningkatkan sistem kekebalan tubuh dengan meningkatkan produksi sel darah putih.\n\n',
              ),
            ],
          ),
        );
        break;
      case 'Makanan':
        contentWidget = RichText(
          text: const TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 16.0),
            children: [
              TextSpan(
                text:
                    'Berikut merupakan beberapa makanan yang dapat membantu menurunkan kadar kolesterol LDL (jahat) dan meningkatkan kadar kolesterol HDL (baik) :\n\n',
              ),
              TextSpan(
                text: '1. Gandum utuh :\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'Gandum utuh kaya akan serat larut, seperti roti gandum utuh, pasta gandum utuh, dan nasi merah.\n\n',
              ),
              TextSpan(
                text: '2. Kacang-kacangan :\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'Kacang-kacangan kaya akan serat larut dan lemak tak jenuh tunggal, seperti kacang almond, kacang kenari, kacang tanah, dan kacang merah.\n\n',
              ),
              TextSpan(
                text: '3. Sayuran :\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'Sayuran yang kaya akan serat larut dan pektin, seperti brokoli, wortel, dan terong.\n\n',
              ),
              TextSpan(
                text: '4. Buah-buahan :\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'Buah-buahan yang kaya akan pektin dan serat larut, seperti apel, pir, jeruk, dan alpukat.\n\n',
              ),
              TextSpan(
                text: '5. Ikan Sirkon :\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'Ikan asin kaya akan asam lemak omega-3, seperti salmon, tuna, dan sarden.\n\n',
              ),
              TextSpan(
                text: '6. Kedelai :\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'Kedelai kaya akan protein dan isoflavon, seperti tahu, tempe, dan edamame.\n\n',
              ),
              TextSpan(
                text: '7. Biji-bijian :\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'Biji-bijian kaya akan serat larut dan lemak tak jenuh ganda, seperti biji chia, biji rami, dan biji bunga matahari.\n\n',
              ),
            ],
          ),
        );
        break;
      case 'Gejala':
        contentWidget = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16.0),
                children: [
                  TextSpan(
                    text: 'Ciri-ciri Kadar Kolesterol Tinggi :\n\n',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        '1. Munculnya plak berwarna kuning atau oranye di kelopak mata, terutama di bagian bawah dekat hidung\n',
                  ),
                  // TextSpan(
                  //   text:
                  //       'Kelopak mata berwarna merah muda, tetapi tanda ini tidak selalu menjadi tanda-tanda pengidap kadar kolesterol tinggi, namun ini juga merupakan sebuah tanda-tanda indikasi pengidap kolesterol tinggi. Selain itu, pada kelopak di ujung dekat mata sedikit berwarna kekuningan\n\n',
                  // ),
                  // TextSpan(
                  //   text: 'Kuku kaki berwarna kekuningan\n\n',
                  // ),
                  // TextSpan(
                  //   text:
                  //       'Munculnya garis-garis gelap di bawah kuku kaki searah pertumbuhannya\n\n',
                  // ),
                  // TextSpan(
                  //   text: 'Kuku kaki pecah-pecah (seperti retak)\n\n',
                  // ),
                  // TextSpan(
                  //   text:
                  //       'Kuku kaki terlihat menjadi lebih tebal dan rapuh\n\n',
                  // ),
                ],
              ),
            ),
            const SizedBox(
                height: 1), // Adds space between the text and the image
            const Text('Contoh plak di kelopak mata:'),
            Image.asset(
                'assets/images/berita1.png'), // Placeholder for image of eyelid plaque
            const SizedBox(height: 10),
            const Text(
                'Kelopak mata berwarna merah muda, tetapi tanda ini tidak selalu menjadi tanda-tanda pengidap kadar kolesterol tinggi, \n'
                'namun ini juga merupakan sebuah tanda-tanda indikasi pengidap kolesterol tinggi. Selain itu, pada kelopak di ujung dekat mata sedikit berwarna kekuningan\n\n'
                'Contoh perubahan kuku kaki yang terkait dengan kolesterol tinggi:'),
            Image.asset(
                'assets/images/berita2.png'), // Placeholder for image of toenail changes
            const SizedBox(height: 10),
            const Text('Kuku kaki berwarna kekuningan, \n'
                'Kuku kaki pecah-pecah (seperti retak)\n'
                'Kuku kaki terlihat menjadi lebih tebal dan rapuh\n'),
            Image.asset('assets/images/berita3.png'),
            const SizedBox(height: 10),
            const Text(
                'Munculnya garis-garis gelap di bawah kuku kaki searah pertumbuhannya\n'),
            Image.asset('assets/images/berita 4.png'),

            // ... You can add more text and images if needed
          ],
        );
        break;
      case 'Berita':
        contentWidget = RichText(
          text: const TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 16.0),
            children: [
              TextSpan(
                text: 'Kolesterol ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'merupakan zat lemak yang secara alami diproduksi oleh tubuh dan juga terdapat dalam beberapa makanan. Kadar kolesterol terbagi menjadi dua jenis utama :\n\n',
              ),
              TextSpan(
                text: 'Kolesterol LDL (Low-Density Lipoprotein) : ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'dikenal sebagai kolesterol “jahat”, LDL bertanggung jawab atas menyebarkan lemak di arteri yang dapat menyebabkan penyumbatan dan penyakit jantung.\n\n',
              ),
              TextSpan(
                text:
                    'Kolesterol LDL (Low-Density Lipoprotein) : dikenal sebagai kolesterol “jahat”, LDL bertanggung jawab atas menyebarkan lemak di arteri yang dapat menyebabkan penyumbatan dan penyakit jantung.\n\n',
              ),
              TextSpan(
                text: 'Kolesterol HDL (High-Density Lipoprotein) : ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'Kolesterol HDL (High-Density Lipoprotein) : dikenal sebagai kolesterol “baik”, HDL membantu membersihkan kolesterol LDL dari arteri dan membawa ke hati untuk dikeluarkan dari tubuh.\n\n',
              ),
              TextSpan(
                text:
                    'Kadar kolesterol yang ideal dalam darah bervariasi berdasarkan usia, jenis kelamin, dan kondisi kesehatan individu. Berikut adalah panduan umum kadar kolesterol :\n\n',
              ),
              TextSpan(
                text:
                    'Kadar kolesterol normal dalam tubuh yaitu < 200 mg/dl,\n',
              ),
              TextSpan(
                text: 'Kadar kolesterol borderline sekitar 200-239 mg/dl,\n',
              ),
              TextSpan(
                text: 'Kadar kolesterol tinggi mencapai ≥ 240 mg/dl.\n\n',
              ),
              // The following TextSpans are additional information you may want to include
              // or modify based on your requirements.
              TextSpan(
                text: 'Ciri-ciri Kadar Kolesterol Tinggi :\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    '1. Munculnya plak berwarna kuning atau oranye di kelopak mata, terutama di bagian bawah dekat hidung\n\n',
              ),
              TextSpan(
                text:
                    '2. Kelopak mata berwarna merah muda, tetapi tanda ini tidak selalu menjadi tanda-tanda pengidap kadar kolesterol tinggi, namun ini juga merupakan sebuah tanda-tanda indikasi pengidap kolesterol tinggi\n\n',
              ),
              TextSpan(
                text: '3. Kuku kaki berwarna kekuningan\n\n',
              ),
              TextSpan(
                text:
                    '4. Munculnya garis-garis gelap di bawah kuku kaki searah pertumbuhannya\n\n',
              ),
              TextSpan(
                text: '5. Kuku kaki pecah-pecah (seperti retak)\n\n',
              ),
              TextSpan(
                text: '6. Kuku kaki terlihat menjadi lebih tebal dan rapuh',
              ),
            ],
          ),
        );
        break;

      default:
        contentWidget = Text('Informasi tidak tersedia');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(service),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 219, 248, 185), // Warna atas (putih)
              Color.fromARGB(255, 255, 255, 255), // Warna bawah (hijau)
            ],
            stops: [0.0, 0.4], // Titik awal dan akhir gradient
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: contentWidget,
        ),
      ),
    );
  }
}
