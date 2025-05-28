import 'package:bookly_clean_arch/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_clean_arch/features/home/presentation/views/widgets/featured_list_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/utils/styles.dart';
import 'featured_list_view_of_newest.dart';

class FetureadBody extends StatelessWidget {
  const FetureadBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 48)),
        SliverToBoxAdapter(child: CustomAppBar()),
        SliverToBoxAdapter(child: SizedBox(height: 48)),
        SliverToBoxAdapter(child: FeaturedListOfItems()),
        SliverToBoxAdapter(child: SizedBox(height: 51)),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text('Newest Books', style: Styles.textStyle18),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        NewestBooksListView(),
      ],
    );
  }
}
