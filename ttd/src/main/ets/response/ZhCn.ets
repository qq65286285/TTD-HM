interface ZhCnInterface{
  name :string ;
}
export class ZhCn implements ZhCnInterface{
  private _name: string = "";

  public set name(value: string) {
    this._name = value;
  }

  public get name(): string {
    return this._name;
  }

  constructor(name: string) {
    this._name = name;
  }

  
}

