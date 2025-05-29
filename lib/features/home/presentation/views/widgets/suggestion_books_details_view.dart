import 'package:bookly_clean_arch/features/home/presentation/views/widgets/suggested_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class SuggestionBooksSection extends StatefulWidget {
  const SuggestionBooksSection({super.key});

  @override
  State<SuggestionBooksSection> createState() => _SuggestionBooksSectionState();
}

class _SuggestionBooksSectionState extends State<SuggestionBooksSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'You can also like',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: StyleConstants.motserraRegular,
            ),
          ),
        ),
        const SizedBox(height: 16),
        const SuggestedListView(),
      ],
    );
  }
}
