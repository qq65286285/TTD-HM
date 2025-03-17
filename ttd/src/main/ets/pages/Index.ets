import text from '@ohos.graphics.text';
import { router } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  @State message: string = 'TTD-鸿蒙';

  onPageShow(): void {
    setTimeout(()=> {
      router.pushUrl({
        url: 'pages/main/login'
      })
    },3000)
  }
  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })

      // Button(){Text('登录')}.width('45%')
    }
    // .onClick(()=> {
    //   router.pushUrl({  url: 'pages/main/login' })
    // })

    .height('100%')
    .width('100%')
    }


}