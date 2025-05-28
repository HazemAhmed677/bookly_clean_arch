import 'package:bookly_clean_arch/features/home/presentation/views/widgets/newest_book_item.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:go_router/go_router.dart';

import '../../../../../core/routes/routes.dart';

class NewestBooksListView extends StatefulWidget {
  const NewestBooksListView({super.key});

  @override
  State<NewestBooksListView> createState() => _NewestBooksListViewState();
}

class _NewestBooksListViewState extends State<NewestBooksListView> {
  bool isPushing = false;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 30.0),
      sliver: SliverList.builder(
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
      ),
    );
  }
}
