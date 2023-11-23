import 'package:flutter/material.dart';
import '../models/candi.dart';

class ItemCard extends StatelessWidget {
  final Candi candi;

  // TODO: 1 - Tambahkan variabel candi sebagai parameter konstruktor
  const ItemCard({super.key, required this.candi});
  @override
  Widget build(BuildContext context) {
    return Card(
      // TODO: 2. Tetapkan parameter shape,margin dan elavation dari cari
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.all(4),
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //TODO: 3. Buat Image sebagai anak dari column
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                // TODO: 2 - Image.asset memiliki nilai candi.imageAsset
                candi.imageAsset,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, top: 8),
            child: Text(
              // Text pertama - nilai: candi.name
              candi.name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, bottom: 8),
            child: Text(
              // Text kedua - nilai: candi.type
              candi.type,
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}