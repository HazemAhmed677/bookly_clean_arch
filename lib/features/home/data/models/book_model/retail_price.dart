class RetailPrice {
  final double? amount;
  final String? currencyCode;

  const RetailPrice({this.amount, this.currencyCode});

  factory RetailPrice.fromMap(Map<String, dynamic> data) => RetailPrice(
    amount: (data['amount'] as num?)?.toDouble(),
    currencyCode: data['currencyCode'] as String?,
  );

  Map<String, dynamic> toMap() => {
    'amount': amount,
    'currencyCode': currencyCode,
  };
}
