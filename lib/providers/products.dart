import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'camisa vermelha',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://img.elo7.com.br/product/zoom/2BD9DAC/camisa-social-manga-longa-masculina-slim-fit-luxo-importada-blusa.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Bolsa',
      description: 'Sua próxima bolsa',
      price: 59.99,
      imageUrl:
          'https://a-static.mlcdn.com.br/618x463/bolsa-feminina-dhaffy-bege-divisorias-alca-de-mao-e-transversal-dhaffy-bolsas/dhaffybolsas/5703861364/32745c46b94c898738af148018603cf4.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://wanny.vteximg.com.br/arquivos/ids/155753-750-750/Oculos-de-sol-Dior-Al13-205-Azul-Dourado.jpg?v=636347946547270000',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://img.irroba.com.br/fit-in/600x600/filters:fill(fff):quality(90)/seltenbr/catalog/coturno-9002/03-cr1/03-cr1.jpg',
    ),
    Product(
      id: 'p5',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://d5kdc2ipo74pa.cloudfront.net/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/v/e/vestidocurtodourado-fabulousagilita-verao20-22_1.jpg',
    ),
    Product(
      id: 'p6',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://http2.mlstatic.com/sapatilha-sapatenis-tenis-feminino-casual-tamanho-ate-42-top-D_NQ_NP_623717-MLB31066155255_062019-F.jpg',
    ),
    Product(
      id: 'p7',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://cdn.awsli.com.br/600x700/186/186813/produto/18722651/c6816b5613.jpg',
    ),
    Product(
      id: 'p8',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://a-static.mlcdn.com.br/618x463/camiseta-caveira-adrenalina/adrenalinabrasil/32543325/5e601c1bb839115033536dab45543694.jpg',
    ),
  ];
  // var _showFavoritesOnly = false;

  List<Product> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
