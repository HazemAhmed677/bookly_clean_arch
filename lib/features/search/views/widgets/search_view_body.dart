import 'package:bookly_clean_arch/features/search/views/widgets/custom_text_field.dart'
    show CustomTextField;
import 'package:bookly_clean_arch/features/search/views/widgets/list_view_of_searched_books.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20, top: 40),
      child: Column(
        children: [
          CustomTextField(),
          SizedBox(height: 30),
          Expanded(child: ListViewOfSearchedBooks()),
        ],
      ),
    );
  }
}
