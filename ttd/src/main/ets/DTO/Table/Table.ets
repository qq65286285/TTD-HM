import { List } from "@kit.ArkTS"

interface ITable{
  allowBook: number

  allowSmoke: number

  callContent: string

  color: string

  description: string

  groupId: string

  groupName: string

  isBox: number

  isCall: number

  isCallCashPayment: number

  lineSn: string

  mid: string

  name: string

  no: string

  orderId: string

  qName: string

  qrcodeUrl: string

  shopName: string

  siteCount: number

  siteCountMin: number

  startNo: number

  tableStatus: number

  type: number

  unProcessBatchCount: number
}
export class Table implements ITable{
  allowBook: number = 0
  allowSmoke: number = 0
  callContent: string = ""
  color: string = ""
  description: string = ""
  groupId: string = ""
  groupName: string = ""
  isBox: number = 0
  isCall: number = 0
  isCallCashPayment: number = 0
  lineSn: string = ""
  mid: string = ""
  name: string = ""
  no: string = ""
  orderId: string = ""
  qName: string = ""
  qrcodeUrl: string = ""
  shopName: string = ""
  siteCount: number = 0
  siteCountMin: number = 0
  startNo: number = 0
  tableStatus: number = 0
  type: number = 0
  unProcessBatchCount: number = 0

  constructor() {
  }


}

interface IRootGetTableListResponse{
  ret_msg: string,
  ret_code: string,
  tables: Table[]
}

export class RootGetTableListResponse implements IRootGetTableListResponse{
  ret_msg: string = ""
  ret_code: string = ""
  tables: Table[] = []

  constructor() {
  }
}