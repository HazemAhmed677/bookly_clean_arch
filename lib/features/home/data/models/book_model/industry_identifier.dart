class IndustryIdentifier {
  final String? type;
  final String? identifier;

  const IndustryIdentifier({this.type, this.identifier});

  factory IndustryIdentifier.fromMap(Map<String, dynamic> data) {
    return IndustryIdentifier(
      type: data['type'] as String?,
      identifier: data['identifier'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {'type': type, 'identifier': identifier};
}
