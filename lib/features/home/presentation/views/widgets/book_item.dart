import 'package:bookly_clean_arch/core/utils/assets.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages

class BookItem extends StatelessWidget {
  const BookItem({super.key, this.flag});
  final bool? flag;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          (flag != null)
              ? BorderRadius.circular(12)
              : BorderRadius.circular(20),
      child: Image.asset(AssetsData.testImage),
      // child: CachedNetworkImage(
      //   imageUrl: imageURL,
      //   fit: BoxFit.fill,
      //   errorWidget: (context, url, error) {
      //     return const Center(
      //       child: Icon(Icons.error),
      //     );
      //   },
      // ),
    );
  }
}
