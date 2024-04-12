import Nav from './Nav'

@Entry
@Component
struct Policy {
  @State message: string='隐私政策'
  @State content: string='content'
  build() {
    Row(){
      PolicyTest()
    }
  }
}

@Component
 export  default struct PolicyTest {
  build() {
    Row() {
      Column() {
        Nav({ message: '1111'})
        List() {
          ListItem() {
            Text($r('app.string.policy'))
              .fontSize($r('sys.float.ohos_id_text_size_body1'))
          }
        }.padding($r('sys.float.ohos_id_default_padding_start'))
      }
      .width('100%')
    }
    .height('100%')
  }
}