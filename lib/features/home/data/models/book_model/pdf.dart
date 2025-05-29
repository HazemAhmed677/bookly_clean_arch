class Pdf {
  final bool? isAvailable;

  const Pdf({this.isAvailable});

  factory Pdf.fromMap(Map<String, dynamic> data) =>
      Pdf(isAvailable: data['isAvailable'] as bool?);

  Map<String, dynamic> toMap() => {'isAvailable': isAvailable};
}
