import { Expose, Type } from 'class-transformer';
import 'reflect-metadata';

// 顶层响应接口
interface ITTDLoginDto {
  call: number;
  auth: string;
  lineUp: number;
  ret_msg: string;
  ret_code: string;
  goodsInfo: string;
  merchantOPInfo:MerchantOp;
}



interface IGoodsInfo {
  infoDetail: GoodsDetail;
}

// 商品明细实现类（严格对应JSON字段）
export  class GoodsInfo implements IGoodsInfo {
  @Expose({name:'zh-cn'})
  @Type(() => GoodsDetail)
  infoDetail: GoodsDetail = new GoodsDetail();

  constructor() {
  }


}

  // 完整响应类
export class TTDLoginDto implements ITTDLoginDto {
  call: number = 0;
  auth: string = "";
  lineUp: number = 0;
  merchantOPInfo: MerchantOp = new MerchantOp();
  ret_msg: string = "";
  ret_code: string = "";
  goodsInfo: string = "";

  // constructor(call: number, auth: string, lineUp: number, ret_msg: string, ret_code: string, goodsInfo: IGoodsInfo) {
  //   this.call = call;
  //   this.auth = auth;
  //   this.lineUp = lineUp;
  //   this.ret_msg = ret_msg;
  //   this.ret_code = ret_code;
  //   this.goodsInfo = goodsInfo;
  // }

  constructor() {
  }


}


interface IGoodsDetail {
  area: string;
  avgPrice: string;
  category: string;
  childrenPrivacy: string;
  city: string;
  createAt: number;  // 保持原始字段命名
  gid: string;
  menuLanguage: string;
  name: string;
  openTime: string;  // 保持原始时间字段格式
  trading: string;
  traffic: string;
  type: number;
  uuid: string;
}

export class GoodsDetail implements IGoodsDetail {
  area: string = "";
  avgPrice: string = "";
  category: string = "";
  childrenPrivacy: string = "";
  city: string = "";
  createAt: number =0;  // 保持原始字段命名
  gid: string = "";
  menuLanguage: string = "";
  name: string = "";
  openTime: string = "";  // 保持原始时间字段格式
  trading: string ="";
  traffic: string = "";
  type: number = 0;
  uuid: string = "";

  constructor(){}
}

interface IMerchantOp{
  mid:string
}
export class MerchantOp implements IMerchantOp{
  mid: string = ""
  constructor(){}
}
