// {
//   "password": "e10adc3949ba59abbe56e057f20f883e",
// "type": "pd",
// "account": "demo",
// "base": {
//   "os": "android",
//   "channel": "JPYLaMian",
//   "language": "ja",
//   "currency": "JPY",
//   "myUid": "4232244e-036f-46fc-b271-8ef35343ec3a",
//   "androidId": "10086"
// }
// }

export  class LoginRequest{

  password:string = ""
  type:string = ""
  account:string = ""
  base:Base = {
    os: "JPYLaMian",
    channel: "JPYLaMian",
    language: "ja",
    currency: "JPY",
    myUid: "4232244e-036f-46fc-b271-8ef35343ec3a",
    androidId: "10086"
  }

  constructor(password: string,account: string) {
    this.password = password
    this.account = account
  }

}
class Base{
  os:string="JPYLaMian"
  channel:string = "JPYLaMian"
  language:string ="ja"
  currency:string = "JPY"
  myUid:string ="4232244e-036f-46fc-b271-8ef35343ec3a"
  androidId:string="10086"
}