import 'package:arisa_task/config/locale_configs.dart';
import 'package:arisa_task/feature/home/home_page.dart';
import 'package:arisa_task/generated/l10n.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final PageController pageController = PageController(initialPage: 0);

  /// Appbar



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: LocalConfigs.localizationsDelegates,
        supportedLocales: const [
          Locale('fa', ''), // English, no country code
        ],
        onGenerateTitle: (BuildContext context) =>
        kDebugMode ? S
            .of(context)
            .arisa : S
            .of(context)
            .arisa,
        home:const HomePage()
    );
  }

  PageView centralContainer() {
    return PageView();
  }
}
