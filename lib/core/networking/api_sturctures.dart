class ApiConstants {
  static const String baseUrl = 'https://www.googleapis.com/books/v1/volumes?';
}

class ApiEndpoints {
  static final String featuredBooks = 'Filtering=free-ebooks&q=programming';
  static final String newestBooks =
      'Filtering=free-ebooks&Sorting=newest&q=subject:programming';
}
