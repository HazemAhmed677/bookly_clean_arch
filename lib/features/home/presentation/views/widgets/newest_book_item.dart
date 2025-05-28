// ignore: depend_on_referenced_packages
import 'package:bookly_clean_arch/features/home/presentation/views/widgets/custom_feedback.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class NewestItem extends StatelessWidget {
  const NewestItem({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hight = MediaQuery.of(context).size.height;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: hight * 0.16,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Image.asset(AssetsData.testImage, fit: BoxFit.fill),
              // child: CachedNetworkImage(
              //   imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail! ?? '',
              //   fit: BoxFit.fill,
              //   errorWidget: (context, url, error) {
              //     return const Center(
              //       child: Icon(Icons.error),
              //     );
              //   },
              // ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 30),
          width: width * 0.50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hazem',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle20,
              ),

              const SizedBox(),
              Row(
                children: [
                  Text(
                    'Free',
                    style: Styles.textStyleForPrice.copyWith(
                      fontWeight: FontWeight.bold,
                      fontFamily: Constants.kMotserraRegular,
                    ),
                  ),
                  const Spacer(flex: 1),
                  const CustomFeedBack(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
