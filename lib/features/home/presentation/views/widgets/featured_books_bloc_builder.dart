import 'package:bookly_clean_arch/features/home/presentation/logic/fetch_featured_books_cubit/fetch_featured_books_cubit.dart';
import 'package:bookly_clean_arch/features/home/presentation/views/widgets/featured_list_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksBlocBuilder extends StatelessWidget {
  const FeaturedBooksBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchFeaturedBooksCubit, FetchFeaturedBooksState>(
      builder: (context, state) {
        switch (state) {
          case FetchFeaturedBooksLoading():
            return SliverToBoxAdapter(
              child: const Center(child: CircularProgressIndicator()),
            );
          case FetchFeaturedBooksSuccess():
            return FeaturedListOfItems();
          case FetchFeaturedBooksFailure():
            return SliverToBoxAdapter(child: Text(state.errorMsg));
          default:
            return SliverToBoxAdapter(child: const SizedBox.shrink());
        }
      },
    );
  }
}
