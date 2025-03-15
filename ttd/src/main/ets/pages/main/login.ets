import { Request } from '../../common/utils/HttpUtils'
import { LoginRequest } from '../../response/LoginRequest';
import { LoginResponse } from '../../response/LoginResponse';
import { promptAction, router } from '@kit.ArkUI';
import { loginApi } from '../../common/constants/CommonConstant';
import { TTDLoginDto } from '../../response/TTDLoginDto';

@Entry
@Component
struct Login {
  @State message: string = '登录';
  @State username: string = 'demo';  // 用户名输入值
  @State password: string = 'e10adc3949ba59abbe56e057f20f883e';  // 密码输入值

  // 按钮点击事件处理
  async   login(pwd:string ,username:string) : Promise<TTDLoginDto>{
      const response = await Request.post<TTDLoginDto>(
        loginApi,
        new LoginRequest(pwd,username)
      )
      return response;
}




  build() {
    Column() {
      Column(){
        Row(){
          Image($rawfile('TTD_logo.png'))
            .width(100)
            .height(100)
        }
        .width('100%')
        .justifyContent(FlexAlign.Center)
      }

      Text(this.message)
        .id('LoginHelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Top },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .textAlign(TextAlign.Center)
        .width('100%')
      Column(){
        Row(){
          TextInput({'placeholder':'请输入用户名','text':'demo'}).width('100%')
          .onChange((value: string) => {
            this.username  = value;  // 实时更新用户名
          })
        }
        .justifyContent(FlexAlign.Center)
        Row(){
          TextInput({'placeholder':'请输入密码','text':'e10adc3949ba59abbe56e057f20f883e'}).width('100%').type(InputType.Password)
            .onChange((value: string) => {
              this.password  = value;  // 实时更新密码
            })
        }
        .justifyContent(FlexAlign.Center)
        Row(){
          Button(){Text('登录')}.width('45%')
        }.onClick(async ()=> {

          let  resp = await this.login(this.password,this.username)
          if (resp.ret_code  === "0000") {
            // 存储token并跳转主页
            AppStorage.setAndRef('loginUser', resp)
            this.getUIContext().getPromptAction().showToast({
              message: '登录成功'
            })
            router.pushUrl({  url: 'pages/main/FunctionList' })
          } else {
            // 显示错误提示
            this.getUIContext().getPromptAction().showToast({
              message: '登录失败'
            })
          }
        })
        .justifyContent(FlexAlign.Center)
      }
      .padding({ top: '350', right: '0.00vp', bottom: '0.00vp', left: '0.00vp' })

      // .backgroundColor(Color.Gray)
      .borderColor(Color.Blue)
      .width('100%')
      // .padding({ top: '400', right: '0.00vp', bottom: '0.00vp', left: '0.00vp' })
    }
    .height('100%')
    .width('100%')
  }

}

