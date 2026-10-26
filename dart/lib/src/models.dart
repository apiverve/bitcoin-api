/// Response models for the Bitcoin Price API.

/// API Response wrapper.
class BitcoinResponse {
  final String status;
  final dynamic error;
  final BitcoinData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  BitcoinResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory BitcoinResponse.fromJson(Map<String, dynamic> json) => BitcoinResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BitcoinData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Bitcoin Price API.

class BitcoinData {
  String? currency;
  num? price;
  num? marketCap;
  num? volume24h;
  num? change24h;
  String? lastUpdated;
  num? high24h;
  num? low24h;
  String? changeDirection;
  BitcoinDataFormatted? formatted;

  BitcoinData({
    this.currency,
    this.price,
    this.marketCap,
    this.volume24h,
    this.change24h,
    this.lastUpdated,
    this.high24h,
    this.low24h,
    this.changeDirection,
    this.formatted,
  });

  factory BitcoinData.fromJson(Map<String, dynamic> json) => BitcoinData(
      currency: json['currency'],
      price: json['price'],
      marketCap: json['marketCap'],
      volume24h: json['volume24h'],
      change24h: json['change24h'],
      lastUpdated: json['lastUpdated'],
      high24h: json['high24h'],
      low24h: json['low24h'],
      changeDirection: json['changeDirection'],
      formatted: json['formatted'] != null ? BitcoinDataFormatted.fromJson(json['formatted']) : null,
    );
}

class BitcoinDataFormatted {
  String? price;
  String? marketCap;
  String? volume;
  String? priceWords;

  BitcoinDataFormatted({
    this.price,
    this.marketCap,
    this.volume,
    this.priceWords,
  });

  factory BitcoinDataFormatted.fromJson(Map<String, dynamic> json) => BitcoinDataFormatted(
      price: json['price'],
      marketCap: json['marketCap'],
      volume: json['volume'],
      priceWords: json['priceWords'],
    );
}

class BitcoinRequest {
  String? currency;
  bool? hourly;

  BitcoinRequest({
    this.currency,
    this.hourly,
  });

  Map<String, dynamic> toJson() => {
      if (currency != null) 'currency': currency,
      if (hourly != null) 'hourly': hourly,
    };
}
