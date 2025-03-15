
class GlobalState {
  private static instance: GlobalState;
  baseUrl: string = 'https://ttdapi.appland.com.cn/gateway';
  loginApi: string = 'com.ttdtrip.api.merchant.apis.service.MerchantLoginApiService';



  private constructor() {}

  public static getInstance(): GlobalState {
    if (!GlobalState.instance)  {
      GlobalState.instance  = new GlobalState();
    }
    return GlobalState.instance;
  }
}

@Component
struct ChildComponent {
  @Consume('globalState') globalState: GlobalState;

  build() {
  }
}