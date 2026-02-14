using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.BitcoinPrice
{
    /// <summary>
    /// Query options for the Bitcoin Price API
    /// </summary>
    public class BitcoinPriceQueryOptions
    {
        /// <summary>
        /// The currency to get the price in
        /// </summary>
        [JsonProperty("currency")]
        public string Currency { get; set; }
    }
}
