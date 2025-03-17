import { Table } from '../../DTO/Table/Table';
import { GetTableApi } from '../../main/api/GetTableApi';
import { List } from '@kit.ArkTS';

@Entry
@Component
struct TableList {
  @State message: string = 'Hello World';
  @State tableList : Table[] = []

  async aboutToAppear(): Promise<void> {
    const mid = AppStorage.get('mid') as string;
    let  resp = await GetTableApi.getTableList(mid)
    this.tableList = resp.tables
    console.log(JSON.stringify(this.tableList));
  }

  build() {
    Column() {
      Row(){

      }
      .width('100%')
      .height('20%')
      Column(){
          ForEach(this.tableList,(item:Table) =>{
            Button('桌号：' + item.no).width('100%')
              .backgroundColor(item.tableStatus == 1?Color.Blue : Color.Green)
              .margin({ top: '5.00vp', right: '0.00vp', bottom: '0.00vp', left: '0.00vp' })
          })
      }

    }
    .height('100%')
    .width('100%')
  }
}