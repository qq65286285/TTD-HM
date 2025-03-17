// 1.登录成功后存储数据
import { LoginResponse } from '../DTO/LoginResponse';

// 存储对象需序列化
AppStorage.SetOrCreate('userInfo', JSON.stringify(LoginResponse));
// 2.其他页面读取
@Entry
@Component
struct ProfilePage {
  @StorageLink('userInfo') userInfo: string = '';

  build() {
    // 使用数据需反序列化
    // const user = JSON.parse(this.userInfo);
    // Text(user.goodsInfo.zh_cn.name)
  }
}