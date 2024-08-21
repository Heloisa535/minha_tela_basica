import 'package:flutter/material.dart';
 
class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: ListView(
        children: [
          buildProductCard(
            imageUrl: 'https://png.pngtree.com/png-clipart/20240212/original/pngtree-red-bell-pepper-sliced-with-a-photo-png-image_14294659.png',
            productName: 'Bell Pepper Red',
            productDetails: '1kg, Price',
            price: 4.99,
            quantity: 1,
          ),
          buildProductCard(
            imageUrl: 'https://static.vecteezy.com/system/resources/previews/020/027/757/original/egg-in-basket-on-transparent-background-free-png.png',
            productName: 'Egg Chicken Red',
            productDetails: '4pcs, Price',
            price: 1.99,
            quantity: 1,
          ),
          buildProductCard(
            imageUrl: 'https://static.vecteezy.com/system/resources/previews/009/588/732/original/banana-with-clipping-path-and-full-depth-of-field-free-png.png',
            productName: 'Organic Bananas',
            productDetails: '12kg, Price',
            price: 3.00,
            quantity: 1,
          ),
          buildProductCard(
            imageUrl: 'https://obahortifruti.vtexassets.com/arquivos/ids/5094930/Gengibre.png?v=638298813925730000',
            productName: 'Ginger',
            productDetails: '250gm, Price',
            price: 2.99,
            quantity: 1,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.green,
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Go to Checkout',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              '\$12.96',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
 
  Widget buildProductCard({
    required String imageUrl,
    required String productName,
    required String productDetails,
    required double price,
    required int quantity,
  }) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    productDetails,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_circle_outline),
                      ),
                      Text('$quantity'),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_circle_outline),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.close),
                ),
                SizedBox(height: 8),
                Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
 
 