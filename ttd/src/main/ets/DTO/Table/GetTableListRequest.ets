import {  BaseRequest } from '../BaseRequest'
import { List } from '@kit.ArkTS'

interface IGetTableListRequest{
  base : BaseRequest
  mid : string
}

export class GetTableListRequest implements IGetTableListRequest{
  base: BaseRequest = new BaseRequest()
  mid: string = ""

  constructor() {
  }
}

