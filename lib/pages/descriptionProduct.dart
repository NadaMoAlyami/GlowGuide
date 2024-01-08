// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:glowguide/pages/products.dart';
import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.product});

  final products product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefultPadding),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
