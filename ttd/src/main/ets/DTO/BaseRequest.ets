interface IBase{
  language: string

  lat: number

  lng: number

  currency: string

  auth: string

  myUid: string
}

export class BaseRequest implements IBase{
  language: string = "zh-cn"
  lat: number = 0
  lng: number = 0
  currency: string = "CNY"
  auth: string = ""
  myUid: string = ""

  constructor() {
  }
}