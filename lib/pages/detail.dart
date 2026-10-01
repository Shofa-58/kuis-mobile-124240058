import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/data.dart';

class DetailMenu extends StatefulWidget {
  final Product menus;

  const DetailMenu({super.key, required this.menus});

  @override
  State<DetailMenu> createState() => _DetailMenuState();
}

class _DetailMenuState extends State<DetailMenu> {
  late Product products; 

  @override
  void initState() {
    super.initState();
    products = widget.menus;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(products.productName)),
      body: Padding(
        padding: EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(products.imageUrl, width: 340, height: 250, fit: BoxFit.cover),
            SizedBox(height: 10),
            Text(
              products.productName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(products.type),
            SizedBox(height: 16),
            Text(products.price,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.green,
              ),
            ),
            Text("Jumlah Produk"),
            SizedBox(height: 10),
          //   IconButton(
          //   onPressed: () {
          //     setState(() {
          //       products.isFavorite = !products.isFavorite;
          //     });
          //   },
          //   icon: Icon(
          //     products.isFavorite ? Icons.favorite : Icons.favorite_border,
          //     color: Colors.red,
          //   ),
          // ),
            Text("Ukuran"),
  
            Text(
              "Deskripsi",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 6),
            Text(products.details),
            SizedBox(height: 25),
            // SizedBox(
            //   width: double.infinity,
            //   height: 45,
            //   child: ElevatedButton.icon(
            //     onPressed: () {
            //       setState(() {
            //         menus.isCart = !menus.isCart; // Mengubah status langsung
            //       });

            //       ScaffoldMessenger.of(context).showSnackBar(
            //         SnackBar(
            //           content: Text(
            //             menus.isCart
            //                 ? '${menus.name} ditambahkan ke keranjang'
            //                 : '${menus.name} dihapus dari keranjang',
            //           ),
            //         ),
            //       );
            //     },
            //     icon: Icon(
            //       menus.isCart
            //           ? Icons.remove_shopping_cart
            //           : Icons.add_shopping_cart,
            //     ),
            //     label: Text(
            //       menus.isCart
            //           ? 'Hapus dari Keranjang'
            //           : 'Tambah ke Keranjang',
            //     ),
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor:
            //           menus.isCart ? Colors.red : Colors.blue,
            //       foregroundColor: Colors.white,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}