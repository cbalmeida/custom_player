import 'package:custom_player/models/artist.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ArtistImages', () {
    test('fromJson: deve construir um objeto com os valores fornecidos no json"', () {
      ArtistImages model = ArtistImages.fromJson({
        'url': 'teste',
        'height': 1,
        'width': 2,
      });
      expect(model.url, 'teste');
      expect(model.height, 1);
      expect(model.width, 2);
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
      ArtistFollowers model = ArtistFollowers.fromJson({
        'href': 'teste',
        'total': 1,
      });
      expect(model.href, 'teste');
      expect(model.total, 1);
    });

    test('fromJson: deve construir um objeto com os valores "default vazios" quando o json for nulo ou nao contiver as colunas corretas"', () {
      ArtistFollowers model = ArtistFollowers.fromJson(null);
      expect(model.href, '');
      expect(model.total, 0);
    });
  });

  group('ArtistExternalUrls', () {
    test('fromJson: deve construir um objeto com os valores fornecidos no json"', () {
      ArtistExternalUrls model = ArtistExternalUrls.fromJson({
        'spotify': 'teste',
      });
      expect(model.spotify, 'teste');
    });

    test('fromJson: deve construir um objeto com os valores "default vazios" quando o json for nulo ou nao contiver as colunas corretas"', () {
      ArtistExternalUrls model = ArtistExternalUrls.fromJson(null);
      expect(model.spotify, '');
    });
  });

  group('Artist', () {
    test('fromJson: deve construir um objeto com os valores fornecidos no json"', () {
      Artist model = Artist.fromJson(
        {
          "external_urls": {
            'spotify': 'teste_spotify',
          },
          "followers": {
            'href': 'teste_href',
            'total': 10,
          },
          "genres": ['genre0', 'genre1'],
          "href": 'teste_href',
          "id": 'teste_id',
          "images": [
            {
              'url': 'teste_images0',
              'height': 1,
              'width': 2,
            },
            {
              'url': 'teste_images1',
              'height': 3,
              'width': 4,
            },
          ],
          "name": 'teste_name',
          "popularity": 10,
          "uri": 'teste_uri',
        },
      );
      expect(model.externalUrls.spotify, 'teste_spotify');
      expect(model.followers.href, 'teste_href');
      expect(model.followers.total, 10);
      expect(model.genres[0], 'genre0');
      expect(model.genres[1], 'genre1');
      expect(model.href, 'teste_href');
      expect(model.id, 'teste_id');
      expect(model.images[0].url, 'teste_images0');
      expect(model.images[0].height, 1);
      expect(model.images[0].width, 2);
      expect(model.images[1].url, 'teste_images1');
      expect(model.images[1].height, 3);
      expect(model.images[1].width, 4);
      expect(model.name, 'teste_name');
      expect(model.popularity, 10);
      expect(model.uri, 'teste_uri');
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
