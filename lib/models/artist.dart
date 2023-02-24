import '../util/int_util.dart';

class Artist {
  final ArtistExternalUrls externalUrls;
  final ArtistFollowers followers;
  final List<String> genres;
  final String href;
  final String id;
  final List<ArtistImages> images;
  final String name;
  final int popularity;
  final String uri;

  Artist({
    required this.externalUrls,
    required this.followers,
    required this.genres,
    required this.href,
    required this.id,
    required this.images,
    required this.name,
    required this.popularity,
    required this.uri,
  });

  factory Artist.fromJson(Map<String, dynamic>? json) {
    return Artist(
      externalUrls: ArtistExternalUrls.fromJson(json?['external_urls']),
      followers: ArtistFollowers.fromJson(json?['followers']),
      genres: List<String>.from(json?['genres'] ?? []),
      href: json?['href'] ?? '',
      id: json?['id'] ?? '',
      images: List<ArtistImages>.from((json?['images'] ?? []).map((x) => ArtistImages.fromJson(x))),
      name: json?['name'] ?? '',
      popularity: IntUtil.parseInt(json?['popularity']),
      uri: json?['uri'] ?? '',
    );
  }
}

class ArtistExternalUrls {
  final String spotify;

  ArtistExternalUrls({required this.spotify});

  factory ArtistExternalUrls.fromJson(Map<String, dynamic>? json) {
    return ArtistExternalUrls(
      spotify: json?['spotify'] ?? '',
    );
  }
}

class ArtistFollowers {
  final String href;
  final int total;

  ArtistFollowers({required this.href, required this.total});

  factory ArtistFollowers.fromJson(Map<String, dynamic>? json) {
    return ArtistFollowers(
      href: json?['href'] ?? '',
      total: IntUtil.parseInt(json?['total']),
    );
  }
}

class ArtistImages {
  final String url;
  final int height;
  final int width;

  ArtistImages({required this.url, required this.height, required this.width});

  factory ArtistImages.fromJson(Map<String, dynamic>? json) {
    return ArtistImages(
      url: json?['url'] ?? '',
      height: IntUtil.parseInt(json?['height']),
      width: IntUtil.parseInt(json?['width']),
    );
  }
}
