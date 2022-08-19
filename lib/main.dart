import 'package:flutter/material.dart';

import 'remedies_theme.dart';
import 'home.dart';

void main() {
  runApp( const Remedies());
}

class Remedies extends StatelessWidget {
  const Remedies({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = RemediesTheme.light();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      title: 'Remedies',
      home: const Home(),
    );
  }
}
