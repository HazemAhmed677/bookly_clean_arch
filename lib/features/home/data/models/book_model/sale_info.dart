import 'list_price.dart';
import 'offer.dart';
import 'retail_price.dart';

class SaleInfo {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final ListPrice? listPrice;
  final RetailPrice? retailPrice;
  final String? buyLink;
  final List<Offer>? offers;

  const SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  factory SaleInfo.fromMap(Map<String, dynamic> data) => SaleInfo(
    country: data['country'] as String?,
    saleability: data['saleability'] as String?,
    isEbook: data['isEbook'] as bool?,
    listPrice:
        data['listPrice'] == null
            ? null
            : ListPrice.fromMap(data['listPrice'] as Map<String, dynamic>),
    retailPrice:
        data['retailPrice'] == null
            ? null
            : RetailPrice.fromMap(data['retailPrice'] as Map<String, dynamic>),
    buyLink: data['buyLink'] as String?,
    offers:
        (data['offers'] as List<dynamic>?)
            ?.map((e) => Offer.fromMap(e as Map<String, dynamic>))
            .toList(),
  );

  Map<String, dynamic> toMap() => {
    'country': country,
    'saleability': saleability,
    'isEbook': isEbook,
    'listPrice': listPrice?.toMap(),
    'retailPrice': retailPrice?.toMap(),
    'buyLink': buyLink,
    'offers': offers?.map((e) => e.toMap()).toList(),
  };
}
