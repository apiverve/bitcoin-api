# Bitcoin Price API - Dart/Flutter Client

Bitcoin Price fetches the current Bitcoin price, recent movement direction, and update timestamps in USD. Paid plans can quote across 172 currencies and add 24-hour volume, market cap, and hourly history.

[![pub package](https://img.shields.io/pub/v/apiverve_bitcoin.svg)](https://pub.dev/packages/apiverve_bitcoin)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Bitcoin Price API](https://apiverve.com/marketplace/bitcoin?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_bitcoin: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_bitcoin/apiverve_bitcoin.dart';

void main() async {
  final client = BitcoinClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'currency': 'USD',
      'hourly': true
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "currency": "USD",
    "price": 97250.43,
    "marketCap": 1928000000000,
    "volume24h": 35420000000,
    "change24h": -1.52,
    "lastUpdated": "2026-02-07T12:00:00.000Z",
    "high24h": 98750.21,
    "low24h": 96125.88,
    "changeDirection": "down",
    "formatted": {
      "price": "$97,250.43",
      "marketCap": "$1.93T",
      "volume": "$35.42B",
      "priceWords": "ninety-seven thousand two hundred fifty dollars"
    }
  }
}
```

## API Reference

- **API Home:** [Bitcoin Price API](https://apiverve.com/marketplace/bitcoin?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/bitcoin](https://docs.apiverve.com/ref/bitcoin?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
