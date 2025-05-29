import 'list_price.dart';
import 'retail_price.dart';

class Offer {
  final int? finskyOfferType;
  final ListPrice? listPrice;
  final RetailPrice? retailPrice;
  final bool? giftable;

  const Offer({
    this.finskyOfferType,
    this.listPrice,
    this.retailPrice,
    this.giftable,
  });

  factory Offer.fromMap(Map<String, dynamic> data) => Offer(
    finskyOfferType: data['finskyOfferType'] as int?,
    listPrice:
        data['listPrice'] == null
            ? null
            : ListPrice.fromMap(data['listPrice'] as Map<String, dynamic>),
    retailPrice:
        data['retailPrice'] == null
            ? null
            : RetailPrice.fromMap(data['retailPrice'] as Map<String, dynamic>),
    giftable: data['giftable'] as bool?,
  );

  Map<String, dynamic> toMap() => {
    'finskyOfferType': finskyOfferType,
    'listPrice': listPrice?.toMap(),
    'retailPrice': retailPrice?.toMap(),
    'giftable': giftable,
  };
}
