import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        foregroundColor: kWhite,
        backgroundColor: kPrimary,
      ),
      body: Container(),
    );
  }
}
