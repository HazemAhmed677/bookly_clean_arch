import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class OneFromAuthors extends StatelessWidget {
  const OneFromAuthors({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: Text(
        'jj',
        overflow: TextOverflow.ellipsis,
        style: Styles.textStyle14,
      ),
    );
  }
}
