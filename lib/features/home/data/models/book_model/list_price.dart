class ListPrice {
  final double? amount;
  final String? currencyCode;

  const ListPrice({this.amount, this.currencyCode});

  factory ListPrice.fromMap(Map<String, dynamic> data) => ListPrice(
    amount: (data['amount'] as num?)?.toDouble(),
    currencyCode: data['currencyCode'] as String?,
  );

  Map<String, dynamic> toMap() => {
    'amount': amount,
    'currencyCode': currencyCode,
  };
}
