import { getTableListApi } from '../../common/constants/CommonConstant'
import { Request } from '../../common/utils/HttpUtils'
import { GetTableListRequest } from '../../DTO/Table/GetTableListRequest'
import { RootGetTableListResponse } from '../../DTO/Table/Table';

async function getTableList(mid:string ) : Promise<RootGetTableListResponse>{
  const request = new GetTableListRequest();
  request.mid = AppStorage.get('mid') as string
  const response = await Request.post<string>(
    getTableListApi,
    request
  )
  const result:RootGetTableListResponse  = JSON.parse(response)  as RootGetTableListResponse
  // const resultDto = new LoginResponse(result.call,result.auth,result.ret_code,result.ret_msg);
  return result
}
export class GetTableApi{
  static getTableList(mid : string): Promise<RootGetTableListResponse> {
    return getTableList(mid)
  }
}