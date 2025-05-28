import 'package:bookly_clean_arch/features/home/presentation/views/widgets/custom_app_bar_book_details.dart';
import 'package:bookly_clean_arch/features/home/presentation/views/widgets/suggestion_books_details_view.dart';
import 'package:flutter/material.dart';

import 'widgets/book_details_section.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key});

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const SizedBox(height: 32),
                const CustomAppBarOfBookDetails(),
                const SizedBox(height: 36),
                BookDetailsSection(),
                const Expanded(child: SizedBox(height: 10)),
                SuggestionBooksSection(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
