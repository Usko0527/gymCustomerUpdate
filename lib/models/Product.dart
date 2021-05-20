import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/photos/ikh_shawi6.jpg",
      "assets/photos/ikh_shawi2.jpg",
      "assets/photos/ikh_shawi3.jpg",
      "assets/photos/ikh_shawi1.jpg",
      "assets/photos/ikh_shawi5.jpg",
      "assets/photos/ikh_shawi4.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Их Шавь Цогцолбор",
    price: 20000,
    description:
        "Гэрээ хийх боломжийг албан байгууллага хувь хүмүүс та бүхэндээ олгож байна. \n 📍 Баруун 4-н зам, Макс молл худалдааны төвийн замын эсрэг талд, Баянгол дүүрэг\n 🏀 Сагсан бөмбөг  \n 🏐 Гар бөмбөг \n ✅ Connor Sports Newoshok. Коннор Спортс брэндийн Неошок системийн модон шал \n ✅ Хувцас солих өрөө \n ✅ Угаалгын өрөө",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/photos/МУИС1.jpg",
      "assets/photos/МУИС2.jpg",
      "assets/photos/МУИС3.jpg",
      "assets/photos/МУИС4.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "МУИС спорт заал",
    price: 80000,
    description:
        "Гэрээ хийх боломжийг албан байгууллага хувь хүмүүс та бүхэндээ олгож байна. \n 📍 Их сургуулийн гудамж - 1, Бага тойруу, Сүхбаатар дүүрэг, Улаанбаатар \n 🏀 Сагсан бөмбөг  \n 🏐 Гар бөмбөг \n ✅ Connor Sports Newoshok. Коннор Спортс брэндийн Неошок системийн модон шал \n ✅ Хувцас солих өрөө \n ✅ Угаалгын өрөө",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/photos/hawai1.jpg",
      "assets/photos/hawai2.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Hawai спорт заал",
    price: 40000,
    description:
        "Гэрээ хийх боломжийг албан байгууллага хувь хүмүүс та бүхэндээ олгож байна. \n 📍 Их сургуулийн гудамж - 1, Бага тойруу, Сүхбаатар дүүрэг, Улаанбаатар \n 🏀 Сагсан бөмбөг  \n 🏐 Гар бөмбөг \n ✅ Connor Sports Newoshok. Коннор Спортс брэндийн Неошок системийн модон шал \n ✅ Хувцас солих өрөө \n ✅ Угаалгын өрөө",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 20.20,
    description: "lala",
    rating: 4.1,
    isFavourite: true,
  ),
];