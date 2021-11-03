part of '../tdapi.dart';

class PaymentReceipt extends TdObject {

  /// Contains information about a successful payment
  PaymentReceipt({title,
    description,
    photo,
    date,
    sellerBotUserId,
    paymentsProviderUserId,
    invoice,
    orderInfo,
    shippingOption,
    credentialsTitle,
    tipAmount});

  /// [title] Product title
  String? title;

  /// [description] Product description
  String? description;

  /// [photo] Product photo; may be null
  Photo? photo;

  /// [date] Point in time (Unix timestamp) when the payment was made
  int? date;

  /// [sellerBotUserId] User identifier of the seller bot
  int? sellerBotUserId;

  /// [paymentsProviderUserId] User identifier of the payment provider bot
  int? paymentsProviderUserId;

  /// [invoice] Contains information about the invoice
  Invoice? invoice;

  /// [orderInfo] Order information; may be null
  OrderInfo? orderInfo;

  /// [shippingOption] Chosen shipping option; may be null
  ShippingOption? shippingOption;

  /// [credentialsTitle] Title of the saved credentials chosen by the buyer
  String? credentialsTitle;

  /// [tipAmount] The amount of tip chosen by the buyer in the smallest units of the currency
  int? tipAmount;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  PaymentReceipt.fromJson(Map<String, dynamic> json)  {
    title = json['title'];
    description = json['description'];
    photo = Photo.fromJson(json['photo'] ?? <String, dynamic>{});
    date = json['date'];
    sellerBotUserId = json['seller_bot_user_id'];
    paymentsProviderUserId = json['payments_provider_user_id'];
    invoice = Invoice.fromJson(json['invoice'] ?? <String, dynamic>{});
    orderInfo = OrderInfo.fromJson(json['order_info'] ?? <String, dynamic>{});
    shippingOption = ShippingOption.fromJson(json['shipping_option'] ?? <String, dynamic>{});
    credentialsTitle = json['credentials_title'];
    tipAmount = json['tip_amount'];
    extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "description": description,
      "photo": photo == null ? null : photo?.toJson(),
      "date": date,
      "seller_bot_user_id": sellerBotUserId,
      "payments_provider_user_id": paymentsProviderUserId,
      "invoice": invoice == null ? null : invoice?.toJson(),
      "order_info": orderInfo == null ? null : orderInfo?.toJson(),
      "shipping_option": shippingOption == null ? null : shippingOption?.toJson(),
      "credentials_title": credentialsTitle,
      "tip_amount": tipAmount,
    };
  }

  static const CONSTRUCTOR = 'paymentReceipt';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}