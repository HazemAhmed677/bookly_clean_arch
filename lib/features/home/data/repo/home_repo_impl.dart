import 'package:bookly_clean_arch/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_clean_arch/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';

import '../../../../core/errors/faluire_class.dart';
import '../../domain/entities/book_entity.dart';
import '../../domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSourceImpl homeLocalDataSourceImpl;
  final HomeRemoteDataSourceImpl homeRemoteDataSourceImpl;

  HomeRepoImpl({
    required this.homeLocalDataSourceImpl,
    required this.homeRemoteDataSourceImpl,
  });
  @override
  Future<Either<ServerFaluire, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      if (homeLocalDataSourceImpl.fetchFeatchBooks().isNotEmpty) {
        return Right(homeLocalDataSourceImpl.fetchFeatchBooks());
      }
      return Right(await homeRemoteDataSourceImpl.fetchFeaturedBooks());
    } on DioException catch (e) {
      return Left(ServerFaluire.fromDioException(dioExecption: e.type));
    } catch (e) {
      return Left(ServerFaluire('oops, there something wrong, try latter'));
    }
  }

  @override
  Future<Either<ServerFaluire, List<BookEntity>>> fetchNewestBooks() async {
    try {
      if (homeLocalDataSourceImpl.fetchNewestBooks().isNotEmpty) {
        return Right(homeLocalDataSourceImpl.fetchNewestBooks());
      }
      return Right(await homeRemoteDataSourceImpl.fetchNewestBooks());
    } on DioException catch (e) {
      return Left(ServerFaluire.fromDioException(dioExecption: e.type));
    } catch (e) {
      return Left(ServerFaluire('oops, there something wrong, try latter'));
    }
  }
}
