import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:system_management/core/custom%20cubit/rebuild/rebuild_cubit.dart';
import 'package:system_management/core/custom_var/custom_var.dart';
import 'package:system_management/core/screen%20size/screen_size.dart';
import 'package:system_management/core/theme/main_theme.dart';

import 'package:system_management/modules/controll%20panal/presntation/screens/controll_panal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RebuildCubit>(
          create: (context) => RebuildCubit(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: MainTheme.mainTheme,
        home: 
         Builder(builder: (context) {
          ScreenSize.getMediaSize(MediaQuery.of(context).size);
          CustomVariables.textTheme = Theme.of(context).textTheme;
          return ControlPanal();
        }),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
          Locale('ar', ''),
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          if (locale != null) {
            // for (Locale supportedLocale in supportedLocales) {
            //   if (supportedLocale.languageCode == locale.languageCode) {
            //     return locale;
            //   }
            // }
          }
          return supportedLocales.first;
        },
      ),
    );
  }
}
