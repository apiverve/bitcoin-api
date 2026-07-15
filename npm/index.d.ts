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
      currency:        null | string;
      price:           number | null;
      marketCap:       number | null;
      volume24H:       number | null;
      change24H:       number | null;
      lastUpdated:     Date | null;
      high24H:         number | null;
      low24H:          number | null;
      changeDirection: null | string;
      formatted:       Formatted;
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
