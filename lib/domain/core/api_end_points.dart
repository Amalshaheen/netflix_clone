import 'package:netflix/core/strings/urls.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = '$baseUrl/trending/all/week?api_key=$apiKey';
  static const topSearch = '$baseUrl/trending/all/day?api_key=$apiKey';
  static const searchQuery = '$baseUrl/search/movie?api_key=$apiKey';
  static const everyonesWatching = '$baseUrl/movie/now_playing?api_key=$apiKey';
  static const comingSoon = '$baseUrl/movie/upcoming?api_key=$apiKey';
}
