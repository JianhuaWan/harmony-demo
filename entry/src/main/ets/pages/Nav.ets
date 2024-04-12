import router from '@ohos.router'
import { expect } from '@ohos/hypium'

@Entry
@Component
struct Nav{
  @State message1:string="test"
  build(){
    Row(){
      NavTest({message:this.message1})
    }
  }
}
@Component
export default struct NavTest {
  @Prop message: string
  build() {
    Row() {
      Navigator({ type: NavigationType.Back, target: '' }) {
        Image($r('app.media.back_black'))
          .width(40)
          .objectFit(ImageFit.ScaleDown)
          .aspectRatio(1)
      }

      Blank()
      Text(this.message)
        .fontSize($r('sys.float.ohos_id_text_size_headline8'))
        .fontWeight(FontWeight.Bold)
        .onClick(() => {
          router.back()
        })
      Blank()
    }
    .padding($r('sys.float.ohos_id_default_padding_start'))
    .width('100%')
  }
}