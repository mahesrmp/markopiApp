import 'package:flutter/material.dart';

class PanenPage extends StatelessWidget {
  final List<String> categories = [
    'Ciri Buah Kopi',
    'Pemetikan',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Markopi',
          style: TextStyle(
            color: Colors.white, // Warna teks di AppBar
          ),
        ),
        backgroundColor: Color(0xFF65451F),
        leading: IconButton(
          onPressed: () {
            // Navigasi ke ProsesBudidayaPage dan menggantikan halaman saat ini
            Navigator.pushReplacementNamed(context, '/');
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/background.png'), // Ganti dengan path gambar Anda
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Panen',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Warna teks Judul Panen
                ),
              ),
            ),
            ...List.generate(
              categories.length,
              (index) {
                var category = categories[index];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF8E745C), // Warna tombol
                      ),
                      onPressed: () {
                        // Navigasi ke halaman yang sesuai berdasarkan kategori
                        if (category == 'Ciri Buah Kopi') {
                          Navigator.pushNamed(context, '/ciri_buah_kopi');
                        } else if (category == 'Pemetikan') {
                          Navigator.pushNamed(context, '/pemetikan');
                        } else {
                          // Tambahkan navigasi ke halaman lain jika diperlukan
                        }
                      },
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          category,
                          style: TextStyle(
                            color: Colors.white, // Warna teks
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
