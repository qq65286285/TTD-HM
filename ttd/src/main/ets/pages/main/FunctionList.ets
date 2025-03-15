import { plainToClassFromExist, plainToInstance } from 'class-transformer';
import { GoodsInfo, TTDLoginDto } from '../../response/TTDLoginDto';

// 读取数据


@Entry
@Component
struct FunctionList {
  @State message: string = 'Hello World';
  @State loginUser: TTDLoginDto = new TTDLoginDto();
  @State zhCnInfoDto : GoodsInfo = new GoodsInfo();

  aboutToAppear() {
    // 从网络/缓存加载数据
    this.loginUser   = AppStorage.get("loginUser") as TTDLoginDto
    const zhCnInfoStr:string = JSON.stringify(this.loginUser.goodsInfo);
    this.zhCnInfoDto  = plainToInstance(GoodsInfo,JSON.parse(zhCnInfoStr));
  }

  build() {
    RelativeContainer() {
      Text( this.zhCnInfoDto.infoDetail.name)
        .id('FunctionListHelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Top },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }

    .height('100%')
    .width('100%')
  }

}