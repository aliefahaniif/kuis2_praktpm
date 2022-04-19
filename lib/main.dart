import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kuis2/feature/kuis/homepage.dart';
import 'package:kuis2/model/contact_list_model.dart';



void main() async {
  initiateLocalDB();
  runApp(const MyApp());
}

void initiateLocalDB() async{
  await Hive.initFlutter();
  Hive.registerAdapter(ContactListModelAdapter());
  await Hive.openBox<ContactListModel>("contact_list");
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageHome(),
    );
  }
}