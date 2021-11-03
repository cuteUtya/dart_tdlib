part of '../tdapi.dart';

class ShippingOption extends TdObject {

  /// One shipping option
  ShippingOption({id,
    title,
    priceParts});

  /// [id] Shipping option identifier 
  String? id;

  /// [title] Option title 
  String? title;

  /// [priceParts] A list of objects used to calculate the total shipping costs
  List<LabeledPricePart>? priceParts;

  /// Parse from a json
  ShippingOption.fromJson(Map<String, dynamic> json)  {
    id = json['id'];
    title = json['title'];
    priceParts = List<LabeledPricePart>.from((json['price_parts'] ?? [])!.map((item) => LabeledPricePart.fromJson(item ?? <String, dynamic>{})).toList());
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": id,
      "title": title,
      "price_parts": priceParts?.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'shippingOption';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}