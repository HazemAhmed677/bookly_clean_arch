import 'package:bookly_clean_arch/core/routes/routes.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:go_router/go_router.dart';

import '../../../home/presentation/views/widgets/newest_book_item.dart';

class ListViewOfSearchedBooks extends StatefulWidget {
  const ListViewOfSearchedBooks({super.key});

  @override
  State<ListViewOfSearchedBooks> createState() =>
      _ListViewOfSearchedBooksState();
}

class _ListViewOfSearchedBooksState extends State<ListViewOfSearchedBooks> {
  bool isPushing = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder:
          (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 20.0, right: 14),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () async {
                if (isPushing) {
                  return;
                }
                setState(() {
                  isPushing = true;
                });

                await GoRouter.of(context).push(Routes.bookDetailsView);
                setState(() {
                  isPushing = false;
                });
              },
              child: NewestItem(),
            ),
          ),
    );
  }
}
