declare module '@apiverve/bitcoin' {
  export interface bitcoinOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface bitcoinResponse {
    status: string;
    error: string | null;
    data: BitcoinPriceData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface BitcoinPriceData {
      price:                  number | null;
      marketCap:              number | null;
      volume24H:              number | null;
      change24H:              number | null;
      currency:               null | string;
      lastUpdated:            Date | null;
      high24H:                number | null;
      low24H:                 number | null;
      changeAmount24H:        number | null;
      change1H:               number | null;
      change7D:               number | null;
      change30D:              number | null;
      change1Y:               number | null;
      marketCapRank:          number | null;
      circulatingSupply:      number | null;
      totalSupply:            number | null;
      maxSupply:              number | null;
      fullyDilutedValuation:  number | null;
      allTimeHigh:            number | null;
      allTimeHighDate:        Date | null;
      percentFromAllTimeHigh: number | null;
      allTimeLow:             number | null;
      allTimeLowDate:         Date | null;
      high30D:                number | null;
      low30D:                 number | null;
      average30D:             number | null;
      volatility30D:          number | null;
      daily:                  Daily[];
      changeDirection:        null | string;
      formatted:              Formatted;
  }
  
  interface Daily {
      date:      Date | null;
      price:     number | null;
      marketCap: number | null;
      volume24H: number | null;
  }
  
  interface Formatted {
      price:      null | string;
      marketCap:  null | string;
      volume:     null | string;
      priceWords: null | string;
  }

  export default class bitcoinWrapper {
    constructor(options: bitcoinOptions);

    execute(callback: (error: any, data: bitcoinResponse | null) => void): Promise<bitcoinResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: bitcoinResponse | null) => void): Promise<bitcoinResponse>;
    execute(query?: Record<string, any>): Promise<bitcoinResponse>;
  }
}
