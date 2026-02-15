/// Response models for the Bitcoin Price API.

/// API Response wrapper.
class BitcoinResponse {
  final String status;
  final dynamic error;
  final BitcoinData? data;

  BitcoinResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory BitcoinResponse.fromJson(Map<String, dynamic> json) => BitcoinResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BitcoinData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Bitcoin Price API.

class BitcoinData {
  String? currency;
  double? price;
  int? marketCap;
  int? volume24h;
  double? change24h;
  String? lastUpdated;

  BitcoinData({
    this.currency,
    this.price,
    this.marketCap,
    this.volume24h,
    this.change24h,
    this.lastUpdated,
  });

  factory BitcoinData.fromJson(Map<String, dynamic> json) => BitcoinData(
      currency: json['currency'],
      price: json['price'],
      marketCap: json['marketCap'],
      volume24h: json['volume24h'],
      change24h: json['change24h'],
      lastUpdated: json['lastUpdated'],
    );
}

class BitcoinRequest {
  String? currency;

  BitcoinRequest({
    this.currency,
  });

  Map<String, dynamic> toJson() => {
      if (currency != null) 'currency': currency,
    };
}
