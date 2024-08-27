import 'package:flutter/material.dart';

import '../../../../core/theme/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        foregroundColor: Colours.kWhite,
        backgroundColor: Colours.kPrimary,
      ),
      body: Container(),
    );
  }
}
