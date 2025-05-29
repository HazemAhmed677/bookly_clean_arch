import 'package:bookly_clean_arch/features/home/domain/entities/book_entity.dart';

import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

class BookModel extends BookEntity {
  final String? kind;
  final String? bookId;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  BookModel({
    this.kind,
    this.bookId,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  }) : super(
         id: bookId!,
         image: volumeInfo!.imageLinks?.thumbnail,
         title: volumeInfo.title!,
         author: volumeInfo.authors?.first ?? "No Name",
         rating: volumeInfo.maturityRating ?? "No rating",
         price: saleInfo?.retailPrice?.amount ?? 0,
       );

  factory BookModel.fromMap(Map<String, dynamic> data) => BookModel(
    kind: data['kind'] as String?,
    bookId: data['id'] as String?,
    etag: data['etag'] as String?,
    selfLink: data['selfLink'] as String?,
    volumeInfo:
        data['volumeInfo'] == null
            ? null
            : VolumeInfo.fromMap(data['volumeInfo'] as Map<String, dynamic>),
    saleInfo:
        data['saleInfo'] == null
            ? null
            : SaleInfo.fromMap(data['saleInfo'] as Map<String, dynamic>),
    accessInfo:
        data['accessInfo'] == null
            ? null
            : AccessInfo.fromMap(data['accessInfo'] as Map<String, dynamic>),
    searchInfo:
        data['searchInfo'] == null
            ? null
            : SearchInfo.fromMap(data['searchInfo'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toMap() => {
    'kind': kind,
    'id': id,
    'etag': etag,
    'selfLink': selfLink,
    'volumeInfo': volumeInfo?.toMap(),
    'saleInfo': saleInfo?.toMap(),
    'accessInfo': accessInfo?.toMap(),
    'searchInfo': searchInfo?.toMap(),
  };
}
