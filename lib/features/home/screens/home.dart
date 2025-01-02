// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ostore/features/home/widgets/home_screen_primery_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            OstorePrimeryHeader(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
