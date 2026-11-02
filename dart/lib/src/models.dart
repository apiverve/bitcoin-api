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
  num? price;
  num? marketCap;
  num? volume24h;
  num? change24h;
  String? currency;
  String? lastUpdated;
  num? high24h;
  num? low24h;
  num? changeAmount24h;
  num? change1h;
  num? change7d;
  num? change30d;
  num? change1y;
  num? marketCapRank;
  num? circulatingSupply;
  num? totalSupply;
  num? maxSupply;
  num? fullyDilutedValuation;
  num? allTimeHigh;
  String? allTimeHighDate;
  num? percentFromAllTimeHigh;
  num? allTimeLow;
  String? allTimeLowDate;
  num? high30d;
  num? low30d;
  num? average30d;
  num? volatility30d;
  List<BitcoinDataDailyItem>? daily;
  String? changeDirection;
  BitcoinDataFormatted? formatted;

  BitcoinData({
    this.price,
    this.marketCap,
    this.volume24h,
    this.change24h,
    this.currency,
    this.lastUpdated,
    this.high24h,
    this.low24h,
    this.changeAmount24h,
    this.change1h,
    this.change7d,
    this.change30d,
    this.change1y,
    this.marketCapRank,
    this.circulatingSupply,
    this.totalSupply,
    this.maxSupply,
    this.fullyDilutedValuation,
    this.allTimeHigh,
    this.allTimeHighDate,
    this.percentFromAllTimeHigh,
    this.allTimeLow,
    this.allTimeLowDate,
    this.high30d,
    this.low30d,
    this.average30d,
    this.volatility30d,
    this.daily,
    this.changeDirection,
    this.formatted,
  });

  factory BitcoinData.fromJson(Map<String, dynamic> json) => BitcoinData(
      price: json['price'],
      marketCap: json['marketCap'],
      volume24h: json['volume24h'],
      change24h: json['change24h'],
      currency: json['currency'],
      lastUpdated: json['lastUpdated'],
      high24h: json['high24h'],
      low24h: json['low24h'],
      changeAmount24h: json['changeAmount24h'],
      change1h: json['change1h'],
      change7d: json['change7d'],
      change30d: json['change30d'],
      change1y: json['change1y'],
      marketCapRank: json['marketCapRank'],
      circulatingSupply: json['circulatingSupply'],
      totalSupply: json['totalSupply'],
      maxSupply: json['maxSupply'],
      fullyDilutedValuation: json['fullyDilutedValuation'],
      allTimeHigh: json['allTimeHigh'],
      allTimeHighDate: json['allTimeHighDate'],
      percentFromAllTimeHigh: json['percentFromAllTimeHigh'],
      allTimeLow: json['allTimeLow'],
      allTimeLowDate: json['allTimeLowDate'],
      high30d: json['high30d'],
      low30d: json['low30d'],
      average30d: json['average30d'],
      volatility30d: json['volatility30d'],
      daily: (json['daily'] as List?)?.map((e) => BitcoinDataDailyItem.fromJson(e)).toList(),
      changeDirection: json['changeDirection'],
      formatted: json['formatted'] != null ? BitcoinDataFormatted.fromJson(json['formatted']) : null,
    );
}

class BitcoinDataDailyItem {
  String? date;
  num? price;
  num? marketCap;
  num? volume24h;

  BitcoinDataDailyItem({
    this.date,
    this.price,
    this.marketCap,
    this.volume24h,
  });

  factory BitcoinDataDailyItem.fromJson(Map<String, dynamic> json) => BitcoinDataDailyItem(
      date: json['date'],
      price: json['price'],
      marketCap: json['marketCap'],
      volume24h: json['volume24h'],
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
  bool? daily;

  BitcoinRequest({
    this.currency,
    this.hourly,
    this.daily,
  });

  Map<String, dynamic> toJson() => {
      if (currency != null) 'currency': currency,
      if (hourly != null) 'hourly': hourly,
      if (daily != null) 'daily': daily,
    };
}
