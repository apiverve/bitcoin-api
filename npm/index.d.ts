declare module '@apiverve/bitcoin' {
  export interface bitcoinOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface bitcoinResponse {
    status: string;
    error: string | null;
    data: BitcoinPriceData;
    code?: number;
  }


  interface BitcoinPriceData {
      currency:    string;
      price:       number;
      marketCap:   number;
      volume24H:   number;
      change24H:   number;
      lastUpdated: Date;
  }

  export default class bitcoinWrapper {
    constructor(options: bitcoinOptions);

    execute(callback: (error: any, data: bitcoinResponse | null) => void): Promise<bitcoinResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: bitcoinResponse | null) => void): Promise<bitcoinResponse>;
    execute(query?: Record<string, any>): Promise<bitcoinResponse>;
  }
}
