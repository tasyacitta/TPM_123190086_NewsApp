import 'package:flutter/material.dart';
import 'package:tpm_project_123190086/helper/shared_preference.dart';
import 'package:tpm_project_123190086/view/login_page.dart';

import 'dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Color(0xff885566),
      ),
      body: const LoginPage(),
    );
  }
}
