part of '../tdapi.dart';

class SavedCredentials extends TdObject {

  /// Contains information about saved card credentials
  SavedCredentials({id,
    title});

  /// [id] Unique identifier of the saved credentials 
  String? id;

  /// [title] Title of the saved credentials
  String? title;

  /// Parse from a json
  SavedCredentials.fromJson(Map<String, dynamic> json)  {
    id = json['id'];
    title = json['title'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "title": title,
    };
  }

  static const CONSTRUCTOR = 'savedCredentials';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}