import 'package:bookly_clean_arch/bookly_clean_arch.dart';
import 'package:bookly_clean_arch/core/utils/service_locator.dart';
import 'package:bookly_clean_arch/core/utils/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  serviceLocator();
  runApp(const BooklyCleanArch());
}
