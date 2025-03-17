
interface LoginResponceInterface{
  ret_code :string ;
  auth:string;
  call:number;
  ret_msg:string;
}

export class LoginResponse implements LoginResponceInterface{
  private _call: number;

  public set call(value: number) {
    this._call = value;
  }

  public get call(): number {
    return this._call;
  }

  private _auth: string;

  public set auth(value: string) {
    this._auth = value;
  }

  public get auth(): string {
    return this._auth;
  }


  private _ret_code: string;

  public set ret_code(value: string) {
    this._ret_code = value;
  }

  public get ret_code(): string {
    return this._ret_code;
  }


  private _ret_msg: string;

  public set ret_msg(value: string) {
    this._ret_msg = value;
  }

  public get ret_msg(): string {
    return this._ret_msg;
  }

  constructor(call: number, auth: string, ret_code: string, ret_msg: string) {
    this._call = call
    this._auth = auth
    this._ret_code = ret_code
    this._ret_msg = ret_msg
  }



}





