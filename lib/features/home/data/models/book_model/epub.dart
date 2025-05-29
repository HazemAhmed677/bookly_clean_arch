class Epub {
  final bool? isAvailable;

  const Epub({this.isAvailable});

  factory Epub.fromMap(Map<String, dynamic> data) =>
      Epub(isAvailable: data['isAvailable'] as bool?);

  Map<String, dynamic> toMap() => {'isAvailable': isAvailable};
}
