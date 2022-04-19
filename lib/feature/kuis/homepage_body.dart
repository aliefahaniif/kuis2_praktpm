import 'package:flutter/material.dart';
import 'package:kuis2/feature/kuis/hive/contact_list.dart';
import 'package:kuis2/feature/kuis/shared_pref/shared_pref_page.dart';
import 'package:kuis2/tools/common_submit_button.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Kuis",
              style: TextStyle(fontSize: 24),
            ),
          ),
          CommonSubmitButton(
            labelButton: 'Shared Preference',
            submitCallback: (String ) {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SharedPrefPage())
              );
            },
          ),
          CommonSubmitButton(
            labelButton: 'Hive Database',
            submitCallback: (String ) {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ContactList())
              );
            },
          )
        ],
      ),
    );
  }
}