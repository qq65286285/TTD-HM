import { plainToClassFromExist, plainToInstance } from 'class-transformer';
import { GoodsInfo, TTDLoginDto } from '../../DTO/TTDLoginDto';
import text from '@ohos.graphics.text';
import { Table } from '../../DTO/Table/Table';
import { getTableListApi } from '../../common/constants/CommonConstant';
import { GetTableApi } from '../../main/api/GetTableApi';
import { router } from '@kit.ArkUI';

// 读取数据


@Entry
@Component
struct FunctionList {
  @State message: string = 'Hello World';
  @State loginUser: TTDLoginDto = new TTDLoginDto();
  @State zhCnInfoDto : GoodsInfo = new GoodsInfo();

  async aboutToAppear() {
    // 从网络/缓存加载数据
    this.loginUser   = AppStorage.get("loginUser") as TTDLoginDto
    const zhCnInfoStr:string = JSON.stringify(this.loginUser.goodsInfo);
    this.zhCnInfoDto  = plainToInstance(GoodsInfo,JSON.parse(zhCnInfoStr));
    AppStorage.setAndRef('mid',this.loginUser.merchantOPInfo.mid)

  }

  build() {
    Column() {
      Row(){
        Text( this.zhCnInfoDto.infoDetail.name)
          .id('FunctionListHelloWorld')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .alignRules({
            center: { anchor: '__container__', align: VerticalAlign.Top },
            middle: { anchor: '__container__', align: HorizontalAlign.Center }
          })
          .width('100%')
          .textAlign(TextAlign.Center)
          .alignSelf(ItemAlign.Start)
      }.height('55%')
      .width('100%')

      Column(){
        Row(){
          Button("桌子列表")
            .onClick(()=>{
              router.pushUrl({url:"pages/main/TableList"})
            })
        }.alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Top },
          middle: { anchor: '__container__', align: HorizontalAlign.Start }
        })
      }
    }

    .height('100%')
    .width('100%')
  }



}

