import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        foregroundColor: kWhite,
        backgroundColor: kPrimary,
      ),
      body: Container(),
    );;
  }
}
