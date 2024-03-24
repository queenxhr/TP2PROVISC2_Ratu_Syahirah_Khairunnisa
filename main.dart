import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Set debug banner to false
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily, // Set font family to Poppins
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0068D7),
          title: Center(
            child: Text(
              'BUAT JANJI TEMU',
              style: GoogleFonts.nunito( // Menggunakan font Nunito
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20, // Ukuran font 20
                  color: Colors.white,
                ),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          leading: IconButton(
            icon: Image.asset(
              'assets/icon/CANCEL.png', // Icon Cancel
              width: 15,
              height: 15,
            ),
            onPressed: () {
              // Aksi yang ingin dilakukan saat tombol x ditekan
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Cari Dokter dan Buat Janji Temu', // Kalimat di atas tombol pencarian
                style: TextStyle(
                  fontSize: 14,
                  
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari nama dokter',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0), // Menjadikan border tidak runcing
                  ),
                  filled: true,
                  fillColor: Colors.lightBlue[50],
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0), // Tambahkan padding ke ikon
                    child: Image.asset(
                      'assets/icon/SEARCH.png', // Icon Search
                      width: 8, // Perkecil ukuran ikon pencarian
                      height: 8, // Perkecil ukuran ikon pencarian
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Aksi yang ingin dilakukan saat tombol filter ditekan
                  },
                  icon: Image.asset(
                    'assets/icon/FILTER.png', // Icon Filter
                    width: 24,
                    height: 24,
                  ),
                  label: Text('Filter'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFCEE7FD)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0), // Menjadikan tombol filter tidak runcing
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Ganti dengan jumlah dokter yang Anda miliki
                itemBuilder: (context, index) {
                  return Card(
                    color: Color(0xFFCEE7FD),
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/images/doctor_avatar.jpg'), // Ganti dengan foto dokter
                            child: Image.asset(
                              'assets/icon/PROFIL.png', // Icon Profil (di dalam lingkaran)
                              width: 24,
                              height: 24,
                            ),
                          ),
                          title: Text(
                            'Nama Dokter $index', // Nama Dokter
                            style: GoogleFonts.nunito( // Menggunakan font Nunito
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16, // Ukuran font 16
                              ),
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Text(
                                'Spesialis Dokter $index', // Spesialis Dokter
                                style: GoogleFonts.nunito( // Menggunakan font Nunito
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14, // Ukuran font 14
                                  ),
                                ),
                              ),
                              Divider(),
                              Text(
                                'Ketersediaan hari: Senin - Jumat',
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Aksi yang ingin dilakukan saat tombol buat janji ditekan
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF0068D7)),
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                            ),
                          ),
                          child: Text(
                            'Buat Janji',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildNumberButton(1),
                buildNumberButton(2),
                buildNumberButton(3),
                IconButton(
                  icon: Image.asset(
                    'assets/icon/ARROW_RIGHT.png', // Icon Arrow Right
                    width: 24,
                    height: 24,
                  ),
                  onPressed: () {
                    // Navigasi ke halaman berikutnya
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NextPage()),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Aksi yang ingin dilakukan saat tombol riwayat ditekan
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF0068D7)),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Menjadikan tombol filter tidak runcing
                  ),
                ),
              ),
              child: Text(
                'RIWAYAT PENDAFTARAN',
                style: TextStyle(
                  fontSize: 20, // Ukuran font 20
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget buildNumberButton(int number) {
    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xFFCEE7FD),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        '$number',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Berikutnya'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(3, (index) {
          return GestureDetector(
            onTap: () {
              // Aksi yang ingin dilakukan saat kotak di tekan (mis. navigasi ke halaman tertentu)
            },
            child: Container(
              margin: EdgeInsets.all(10),
              color: Colors.blue,
              child: Center(
                child: Text(
                  '${index + 1}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
