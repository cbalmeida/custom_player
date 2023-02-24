import 'package:custom_player/models/artist.dart';
import 'package:flutter_test/flutter_test.dart';

import '../fixtures/json_fixture.dart';

void main() {
  group('ArtistImages', () {
    test('fromJson: deve construir um objeto com os valores fornecidos no json"', () {
      final json = loadJsonFixture("artist_images");
      final model = ArtistImages.fromJson(json);
      expect(model.url, json['url']);
      expect(model.height, json['height']);
      expect(model.width, json['width']);
    });

    test('fromJson: deve construir um objeto com os valores "default vazios" quando o json for nulo ou nao contiver as colunas corretas"', () {
      ArtistImages model = ArtistImages.fromJson(null);
      expect(model.url, '');
      expect(model.height, 0);
      expect(model.width, 0);
    });
  });

  group('ArtistFollowers', () {
    test('fromJson: deve construir um objeto com os valores fornecidos no json"', () {
      final json = loadJsonFixture("artist_followers");
      final model = ArtistFollowers.fromJson(json);
      expect(model.href, json['href']);
      expect(model.total, json['total']);
    });

    test('fromJson: deve construir um objeto com os valores "default vazios" quando o json for nulo ou nao contiver as colunas corretas"', () {
      ArtistFollowers model = ArtistFollowers.fromJson(null);
      expect(model.href, '');
      expect(model.total, 0);
    });
  });

  group('ArtistExternalUrls', () {
    test('fromJson: deve construir um objeto com os valores fornecidos no json"', () {
      final json = loadJsonFixture("artist_external_urls");
      final model = ArtistExternalUrls.fromJson(json);
      expect(model.spotify, json['spotify']);
    });

    test('fromJson: deve construir um objeto com os valores "default vazios" quando o json for nulo ou nao contiver as colunas corretas"', () {
      ArtistExternalUrls model = ArtistExternalUrls.fromJson(null);
      expect(model.spotify, '');
    });
  });

  group('Artist', () {
    test('fromJson: deve construir um objeto com os valores fornecidos no json"', () {
      final json = loadJsonFixture("artist");
      final model = Artist.fromJson(json);
      expect(model.externalUrls.spotify, json["external_urls"]["spotify"]);
      expect(model.followers.href, json["followers"]["href"]);
      expect(model.followers.total, json["followers"]["total"]);
      expect(model.genres.length, json["genres"].length);
      expect(model.href, json["href"]);
      expect(model.id, json["id"]);
      expect(model.images.length, json["images"].length);
      expect(model.name, json["name"]);
      expect(model.popularity, json["popularity"]);
      expect(model.uri, json["uri"]);
    });

    test('fromJson: deve construir um objeto com os valores "default vazios" quando o json for nulo ou nao contiver as colunas corretas"', () {
      Artist model = Artist.fromJson(null);
      expect(model.externalUrls.spotify, '');
      expect(model.followers.href, '');
      expect(model.followers.total, 0);
      expect(model.genres.length, 0);
      expect(model.href, '');
      expect(model.id, '');
      expect(model.images.length, 0);
      expect(model.name, '');
      expect(model.popularity, 0);
      expect(model.uri, '');
    });
  });
}
