import 'package:flutter/material.dart';
import 'product_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clothing App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String studentIndex = "211143";

  final List<Map<String, dynamic>> products = [
    {
      'name': 'Фустан',
      'image': 'https://ariststyles.com/cdn/shop/products/RedFittedCorsetSatinSlitGownCD265-WomenEveningFormalGown-SpecialOccasion.jpg?v=1687414205&width=1445',
      'description': 'Елегантен фустан со цветен дезен.',
      'price': '1500 ден'
    },
    {
      'name': 'Фармерки',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQih_M1Ufe6NQOvHLA5ap-8N6Wv70MMp2GDbg&s',
      'description': 'Класични фармерки.',
      'price': '1200 ден'
    },
    {
      'name': 'Мајца',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSylfbaZ_9eJZOM4mkmabGQgWsKfHw4CZeT1w&s',
      'description': 'Памучна мајца со кратки ракави.',
      'price': '800 ден'
    },
    {
      'name': 'Патики',
      'image': 'https://www.buzzsneakers.mk/files/thumbs/files/images/slike-proizvoda/media/DV1/DV1623-001/images/thumbs_800/DV1623-001_800_800px.jpg',
      'description': 'Спортски патики за секојдневна употреба.',
      'price': '2500 ден'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Индекс: $studentIndex'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(product['image']),
              title: Text(product['name']),
              subtitle: Text(product['price']),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetails(product: product),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
