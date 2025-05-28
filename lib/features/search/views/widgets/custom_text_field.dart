import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/styles.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String input = '';
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      clipBehavior: Clip.hardEdge,
      cursorColor: Colors.lightBlueAccent,
      style: Styles.textStyle18,
      onSubmitted: (value) {
        if (value != '') {
          // BlocProvider.of<FetchSearchBooksCubitCubit>(context)
          //     .fetchSearchedBooks(title: value);
        }
      },
      onChanged: (value) {
        input = value;
      },
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {
            if (input != '') {
              // BlocProvider.of<FetchSearchBooksCubitCubit>(context)
              //     .fetchSearchedBooks(title: input);
            }
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 20,
            color: Colors.lightBlueAccent,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          borderSide: BorderSide(color: Colors.lightBlueAccent),
        ),
      ),
    );
  }
}
