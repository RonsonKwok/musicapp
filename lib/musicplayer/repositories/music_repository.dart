import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:musicapp/musicplayer/models/music_item.dart';

class MusicRepositoryException implements Exception {}

class MusicRepository {
  final http.Client _httpClient;
  static const _baseUrl = 'itunes.apple.com';

  MusicRepository({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  Future<List<MusicItem>> getMusicItems(String searchTerm) async {
    var songRequest = Uri.https(
      _baseUrl,
      'search',
      <String, String>{
        'term': searchTerm,
        'media': 'music',
        'attribute': 'mixTerm',
        'limit': '15',
      },
    );
    var songResponse = await _httpClient.get(songRequest);

    if (songResponse.statusCode != 200) {
      throw MusicRepositoryException();
    }
    var songJson = json.decode(songResponse.body);
    final List<dynamic> results = songJson['results'];
    return results.map((json) => MusicItem.fromJson(json)).toList();
  }
}
