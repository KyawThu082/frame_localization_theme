import 'package:flutter/material.dart';
import 'package:sellers_app_for_fill_up_store/common/classes/language_constants.dart';

import '../../common/classes/language.dart';
import '../../main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(translation(context).homePage),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: DropdownButton<Language>(
              underline: const SizedBox(),
              icon: const Icon(
                Icons.language,
                color: Colors.white,
              ),
              onChanged: (Language? language) async {
                if (language != null) {
                  Locale locale = await setLocale(language.languageCode);

                  // ignore: use_build_context_synchronously
                  MyApp.setLocale(context, locale);
                }
              },
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>(
                    (e) => DropdownMenuItem<Language>(
                      value: e,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[Text(e.name)],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
