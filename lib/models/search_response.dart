import 'dart:convert';

List<SearchResponse> searchResponseFromJson(String str) => List<SearchResponse>.from(json.decode(str).map((x) => SearchResponse.fromJson(x)));

String searchResponseToJson(List<SearchResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SearchResponse {
  int? id;
  String name;
  String? region;
  String? country;
  double? lat;
  double? lon;
  String? url;

  SearchResponse({
    this.id,
    required this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.url,
  });

  factory SearchResponse.fromJson(Map<String, dynamic> json) => SearchResponse(
    id: json["id"],
    name: json["name"],
    region: json["region"],
    country: json["country"],
    lat: json["lat"]?.toDouble(),
    lon: json["lon"]?.toDouble(),
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "region": region,
    "country": country,
    "lat": lat,
    "lon": lon,
    "url": url,
  };
}