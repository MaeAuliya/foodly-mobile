import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        foregroundColor: Colours.kWhite,
        backgroundColor: Colours.kPrimary,
      ),
      body: Container(),
    );
  }
}
