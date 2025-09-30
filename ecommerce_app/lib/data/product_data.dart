import '../models/product.dart';

class ProductData {
  static List<Product> getSampleProducts() {
    return [
      Product(
        id: '1',
        name: 'Wireless Headphones',
        description: 'High-quality wireless headphones with noise cancellation',
        price: 99.99,
        imageUrl: 'https://via.placeholder.com/300x300.png?text=Headphones',
        category: 'Electronics',
      ),
      Product(
        id: '2',
        name: 'Smart Watch',
        description: 'Fitness tracker with heart rate monitor',
        price: 199.99,
        imageUrl: 'https://via.placeholder.com/300x300.png?text=Smart+Watch',
        category: 'Electronics',
      ),
      Product(
        id: '3',
        name: 'Laptop Backpack',
        description: 'Durable backpack with laptop compartment',
        price: 49.99,
        imageUrl: 'https://via.placeholder.com/300x300.png?text=Backpack',
        category: 'Accessories',
      ),
      Product(
        id: '4',
        name: 'USB-C Cable',
        description: 'Fast charging USB-C cable 6ft',
        price: 14.99,
        imageUrl: 'https://via.placeholder.com/300x300.png?text=USB+Cable',
        category: 'Accessories',
      ),
      Product(
        id: '5',
        name: 'Bluetooth Speaker',
        description: 'Portable waterproof bluetooth speaker',
        price: 79.99,
        imageUrl: 'https://via.placeholder.com/300x300.png?text=Speaker',
        category: 'Electronics',
      ),
      Product(
        id: '6',
        name: 'Phone Case',
        description: 'Protective case for smartphones',
        price: 19.99,
        imageUrl: 'https://via.placeholder.com/300x300.png?text=Phone+Case',
        category: 'Accessories',
      ),
      Product(
        id: '7',
        name: 'Wireless Mouse',
        description: 'Ergonomic wireless mouse',
        price: 29.99,
        imageUrl: 'https://via.placeholder.com/300x300.png?text=Mouse',
        category: 'Electronics',
      ),
      Product(
        id: '8',
        name: 'Desk Lamp',
        description: 'LED desk lamp with adjustable brightness',
        price: 39.99,
        imageUrl: 'https://via.placeholder.com/300x300.png?text=Desk+Lamp',
        category: 'Home',
      ),
    ];
  }
}
