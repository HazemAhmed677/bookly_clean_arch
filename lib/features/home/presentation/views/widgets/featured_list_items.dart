import 'package:bookly_clean_arch/core/routes/routes.dart';
import 'package:bookly_clean_arch/features/home/presentation/views/widgets/book_item.dart';
import 'package:flutter/material.dart'; // ignore: depend_on_referenced_packages
// ignore: depend_on_referenced_packages
import 'package:go_router/go_router.dart';

class FeaturedListOfItems extends StatelessWidget {
  const FeaturedListOfItems({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.width;
    return SizedBox(
      height: hight * .6,
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder:
              (context, index) => Container(
                margin:
                    (index < (9))
                        ? const EdgeInsets.only(right: 16)
                        : const EdgeInsets.only(right: 30),
                width: width * .4,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    GoRouter.of(context).push(Routes.bookDetailsView);
                  },
                  child: BookItem(),
                ),
              ),
        ),
      ),
    );
  }
}
