class ImageLinks {
  final String? smallThumbnail;
  final String? thumbnail;

  const ImageLinks({this.smallThumbnail, this.thumbnail});

  factory ImageLinks.fromMap(Map<String, dynamic> data) => ImageLinks(
    smallThumbnail: data['smallThumbnail'] as String?,
    thumbnail: data['thumbnail'] as String?,
  );

  Map<String, dynamic> toMap() => {
    'smallThumbnail': smallThumbnail,
    'thumbnail': thumbnail,
  };
}
