// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class products {
  final String image, title, description;
  final int id;

  products({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
  });
}

List<products> product = [
  products(
    id: 1,
    title: "CeraVe",
    description: dummyText,
    image: "assets/images/CeraVeProduct.png",
  ),
  products(
    id: 2,
    title: "Belt Bag",
    description: dummyText,
    image: "assets/images/bag_2.png",
  ),
  products(
    id: 3,
    title: "Hang Top",
    description: dummyText,
    image: "assets/images/bag_3.png",
  ),
  products(
    id: 4,
    title: "Old Fashion",
    description: dummyText,
    image: "assets/images/bag_4.png",
  ),
  products(
    id: 5,
    title: "Office Code",
    description: dummyText,
    image: "assets/images/bag_5.png",
  ),
  products(
    id: 6,
    title: "Office Code",
    description: dummyText,
    image: "assets/images/bag_6.png",
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
