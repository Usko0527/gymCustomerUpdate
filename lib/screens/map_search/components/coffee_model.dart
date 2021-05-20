import 'package:google_maps_flutter/google_maps_flutter.dart';

class Coffee {
  String shopName;
  String address;
  String description;
  String thumbNail;
  LatLng locationCoords;

  Coffee(
      {this.shopName,
      this.address,
      this.description,
      this.thumbNail,
      this.locationCoords});
}

final List<Coffee> coffeeShops = [
  Coffee(
      shopName: 'МУИС спорт заал',
      address: 'МУИС-Бизнесийн сургууль',
      description:
          'Гэрээ хийх боломжийг албан байгууллага болон хувь хүмүүс та бүхэндээ олгож байна.',
      locationCoords: LatLng(40.745803, -73.988213),
      thumbNail: 'https://num.edu.mn'),
  Coffee(
      shopName: 'Их шавь цогцолбор',
      address: 'Халдварт буудлын хойд талд',
      description:
          'Гэрээ хийх боломжийг албан байгууллага болон хувь хүмүүс та бүхэндээ олгож байна.',
      locationCoords: LatLng(40.751908, -73.989804),
      thumbNail: ''),
  Coffee(
      shopName: 'Hawai спорт заал',
      address: 'ТЭЦ-3 баруун талд байрлалтай',
      description:
          'Гэрээ хийх боломжийг албан байгууллага болон хувь хүмүүс та бүхэндээ олгож байна.',
      locationCoords: LatLng(40.730148, -73.999639),
      thumbNail: ''),
];
