declare module '@apiverve/advice' {
  export interface adviceOptions {
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

  export interface adviceResponse {
    status: string;
    error: string | null;
    data: AdviceGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface AdviceGeneratorData {
      id:     null | string;
      advice: null | string;
      lang:   null | string;
  }

  export default class adviceWrapper {
    constructor(options: adviceOptions);

    execute(callback: (error: any, data: adviceResponse | null) => void): Promise<adviceResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: adviceResponse | null) => void): Promise<adviceResponse>;
    execute(query?: Record<string, any>): Promise<adviceResponse>;
  }
}
