import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final List<Product> products = [
    Product(
      title: "Iphone",
      description:
          "Di iPhone atau iPad, Anda dapat menyalakan deskripsi audio untuk menampilkan keterangan adegan dalam video.",
      price: 12.99,
      color: Colors.orange,
    ),
    Product(
      title: "Laptop",
      description:
          "informasi mengenai komponen yang telah terpasang di laptop atau komputer.",
      price: 5.49,
      color: Colors.lime,
    ),
    Product(
      title: "Tablet",
      description:
          "Desain bodinya sleek dan ringan dengan ketebalan hanya 6.35 mm dan berat 515 gram saja. Huawei MatePad 11.5",
      price: 2.99,
      color: Colors.lightBlue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Produk..'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                          decoration: BoxDecoration(
                            color: product.color,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            product.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      product.description,
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${product.price.toStringAsFixed(2)}",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Add to cart action
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          ),
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Product {
  final String title;
  final String description;
  final double price;
  final Color color;

  Product({
    required this.title,
    required this.description,
    required this.price,
    required this.color,
  });
}
