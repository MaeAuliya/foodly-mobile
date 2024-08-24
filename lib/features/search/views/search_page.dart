import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        foregroundColor: kWhite,
        backgroundColor: kPrimary,
      ),
      body: Container(),
    );
  }
}
