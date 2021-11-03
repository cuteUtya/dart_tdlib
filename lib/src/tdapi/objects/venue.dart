part of '../tdapi.dart';

class Venue extends TdObject {

  /// Describes a venue
  Venue({location,
    title,
    address,
    provider,
    id,
    type});

  /// [location] Venue location; as defined by the sender 
  Location? location;

  /// [title] Venue name; as defined by the sender 
  String? title;

  /// [address] Venue address; as defined by the sender 
  String? address;

  /// [provider] Provider of the venue database; as defined by the sender. Currently only "foursquare" and "gplaces" (Google Places) need to be supported
  String? provider;

  /// [id] Identifier of the venue in the provider database; as defined by the sender
  String? id;

  /// [type] Type of the venue in the provider database; as defined by the sender
  String? type;

  /// Parse from a json
  Venue.fromJson(Map<String, dynamic> json)  {
    location = Location.fromJson(json['location'] ?? <String, dynamic>{});
    title = json['title'];
    address = json['address'];
    provider = json['provider'];
    id = json['id'];
    type = json['type'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "location": location == null ? null : location?.toJson(),
      "title": title,
      "address": address,
      "provider": provider,
      "id": id,
      "type": type,
    };
  }

  static const CONSTRUCTOR = 'venue';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}