import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        foregroundColor: kWhite,
        backgroundColor: kPrimary,
      ),
      body: Container(),
    );
  }
}
