import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tpm_project_123190086/models/user_model.dart';
import 'package:tpm_project_123190086/helper/shared_preference.dart';
import 'package:tpm_project_123190086/models/user_model.dart';
import 'package:tpm_project_123190086/view/dashboard.dart';
import 'package:tpm_project_123190086/view/homepage.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initiateLocalDB();
  SharedPreference().getLoginStatus().then((status) {
    runApp(MaterialApp(home: status ? Dashboard() : HomePage()));
  });
}

void initiateLocalDB() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserModelAdapter());
  await Hive.openBox<UserModel>("data");
}