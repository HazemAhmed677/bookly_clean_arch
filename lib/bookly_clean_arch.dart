import 'package:bookly_clean_arch/core/routes/app_router.dart';
import 'package:bookly_clean_arch/core/utils/constants.dart';
import 'package:flutter/material.dart';

class BooklyCleanArch extends StatelessWidget {
  const BooklyCleanArch({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: StyleConstants.primaryColor,
      ),
    );
  }
}
