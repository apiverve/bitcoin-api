Bitcoin Price API
============

Bitcoin Price fetches the current Bitcoin price, recent movement direction, and update timestamps in USD. Paid plans can quote across 172 currencies and add market cap, 24-hour volume, supply, all-time highs, 1-hour to 1-year changes, 30-day stats, and hourly and 30-day daily history.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-bitcoinprice.svg)](https://pypi.org/project/apiverve-bitcoinprice/)

This is a Python wrapper for the [Bitcoin Price API](https://apiverve.com/marketplace/bitcoin?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-bitcoinprice
```

Using `pip3`:

```bash
pip3 install apiverve-bitcoinprice
```

---

## Configuration

Before using the Bitcoin Price API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_bitcoinprice.apiClient import BitcoinAPIClient

# Initialize the client with your APIVerve API key
api = BitcoinAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Bitcoin Price API documentation is found here: [https://docs.apiverve.com/ref/bitcoin](https://docs.apiverve.com/ref/bitcoin?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_bitcoinprice.apiClient import BitcoinAPIClient

# Initialize the client with your APIVerve API key
api = BitcoinAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "price": 80621,
    "marketCap": 1620852883292,
    "volume24h": 23453847279,
    "change24h": 0.52,
    "currency": "USD",
    "lastUpdated": "2026-10-27T17:41:09.843Z",
    "high24h": 80621,
    "low24h": 79416,
    "changeAmount24h": 417.2,
    "change1h": 0.07,
    "change7d": -2.45,
    "change30d": -4.65,
    "change1y": -29.97,
    "marketCapRank": 1,
    "circulatingSupply": 20104350,
    "totalSupply": 20104409,
    "maxSupply": 21000000,
    "fullyDilutedValuation": 1620857639990,
    "allTimeHigh": 126080,
    "allTimeHighDate": "2025-10-06T10:57:42.000Z",
    "percentFromAllTimeHigh": -36.06,
    "allTimeLow": 67.81,
    "allTimeLowDate": "2013-07-05T16:00:00.000Z",
    "high30d": 86489.73,
    "low30d": 80029.43,
    "average30d": 82773.02,
    "volatility30d": 1.3193,
    "daily": [
      {
        "date": "2026-09-28",
        "price": 83479.25,
        "marketCap": 1677138373123.67,
        "volume24h": 41541721154.86
      },
      {
        "date": "2026-09-29",
        "price": 83640.1,
        "marketCap": 1680405670009.95,
        "volume24h": 29007802596.08
      },
      {
        "date": "2026-09-30",
        "price": 83576.13,
        "marketCap": 1679120514824.05,
        "volume24h": 35066512389.82
      },
      {
        "date": "2026-10-01",
        "price": 84841.67,
        "marketCap": 1704652759050.2,
        "volume24h": 33100807361.31
      },
      {
        "date": "2026-10-02",
        "price": 84506.47,
        "marketCap": 1697953579634.35,
        "volume24h": 45423081877.15
      },
      {
        "date": "2026-10-03",
        "price": 84742.79,
        "marketCap": 1702737315286.27,
        "volume24h": 14790418116.02
      },
      {
        "date": "2026-10-04",
        "price": 86489.73,
        "marketCap": 1737878978541.3,
        "volume24h": 17426360350.68
      },
      {
        "date": "2026-10-05",
        "price": 85770.87,
        "marketCap": 1723479563822.4,
        "volume24h": 31361712130.87
      },
      {
        "date": "2026-10-06",
        "price": 85540.09,
        "marketCap": 1718883142480.07,
        "volume24h": 26923752236.97
      },
      {
        "date": "2026-10-07",
        "price": 83282.05,
        "marketCap": 1673545872851.79,
        "volume24h": 39447580075.09
      },
      {
        "date": "2026-10-08",
        "price": 81685.89,
        "marketCap": 1641512859266.02,
        "volume24h": 42759290795.71
      },
      {
        "date": "2026-10-09",
        "price": 82564.29,
        "marketCap": 1659200907954.54,
        "volume24h": 26322309482.27
      },
      {
        "date": "2026-10-10",
        "price": 82917.9,
        "marketCap": 1666346379048.68,
        "volume24h": 14844875004.31
      },
      {
        "date": "2026-10-11",
        "price": 83690.87,
        "marketCap": 1681917572795.23,
        "volume24h": 15154188868.08
      },
      {
        "date": "2026-10-12",
        "price": 81794.85,
        "marketCap": 1643852506928,
        "volume24h": 27710289641.52
      },
      {
        "date": "2026-10-13",
        "price": 83115.1,
        "marketCap": 1670428029173.6,
        "volume24h": 31216634003.01
      },
      {
        "date": "2026-10-14",
        "price": 81603.65,
        "marketCap": 1640092365666.06,
        "volume24h": 33806769353.61
      },
      {
        "date": "2026-10-15",
        "price": 82155.54,
        "marketCap": 1651229242068.2,
        "volume24h": 40395142289.56
      },
      {
        "date": "2026-10-16",
        "price": 81523.66,
        "marketCap": 1638531203401.84,
        "volume24h": 28327794739.93
      },
      {
        "date": "2026-10-17",
        "price": 81408.35,
        "marketCap": 1636213549330.08,
        "volume24h": 14193438779.83
      },
      {
        "date": "2026-10-18",
        "price": 82019.58,
        "marketCap": 1648498719891.2,
        "volume24h": 20233776355.03
      },
      {
        "date": "2026-10-19",
        "price": 81875.26,
        "marketCap": 1645598075026.09,
        "volume24h": 25801005531.15
      },
      {
        "date": "2026-10-20",
        "price": 82943.83,
        "marketCap": 1667075047131.56,
        "volume24h": 27926195682.99
      },
      {
        "date": "2026-10-21",
        "price": 84082.27,
        "marketCap": 1689956272727.96,
        "volume24h": 32168983739.06
      },
      {
        "date": "2026-10-22",
        "price": 81328.21,
        "marketCap": 1634863330362.04,
        "volume24h": 33259629772.86
      },
      {
        "date": "2026-10-23",
        "price": 81102.31,
        "marketCap": 1630357952779.02,
        "volume24h": 24080202631.04
      },
      {
        "date": "2026-10-24",
        "price": 80810.57,
        "marketCap": 1624538623440.71,
        "volume24h": 21863053585.99
      },
      {
        "date": "2026-10-25",
        "price": 80048.85,
        "marketCap": 1609254730125.75,
        "volume24h": 14036774037.12
      },
      {
        "date": "2026-10-26",
        "price": 80029.43,
        "marketCap": 1608907416309.57,
        "volume24h": 28524432511.52
      },
      {
        "date": "2026-10-27",
        "price": 80621,
        "marketCap": 1620852883292,
        "volume24h": 23453847279
      }
    ],
    "changeDirection": "up",
    "formatted": {
      "price": "$80,621.00",
      "marketCap": "$1.62T",
      "volume": "$23.45B",
      "priceWords": "eighty thousand, six hundred twenty-one dollars"
    }
  }
}
```

---

## Error Handling

The API client provides comprehensive error handling through the `BitcoinAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_bitcoinprice.apiClient import BitcoinAPIClient, BitcoinAPIClientError

api = BitcoinAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except BitcoinAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_bitcoinprice.apiClient import BitcoinAPIClient, BitcoinAPIClientError

api = BitcoinAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except BitcoinAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_bitcoinprice.apiClient import BitcoinAPIClient, BitcoinAPIClientError

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

# Using context manager ensures proper cleanup
with BitcoinAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except BitcoinAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_bitcoinprice.apiClient import BitcoinAPIClient

# Enable debug mode
api = BitcoinAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_bitcoinprice.apiClient import BitcoinAPIClient

api = BitcoinAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "USD",
    "hourly": true,
    "daily": true
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
