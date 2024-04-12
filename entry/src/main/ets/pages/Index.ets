import promptAction from '@ohos.promptAction'
import router from '@ohos.router'
import Nav from './Nav'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Nav({ message: "title" })
      Row() {
        Column() {
          Text(this.message)
            .fontWeight(FontWeight.Normal)
            .onClick(() => {
              router.pushUrl({
                url: 'pages/Nav'
              })
            })
        }.width("50%")

        Blank()
        Column() {
          Text("宝能陈家达")
            .fontWeight(FontWeight.Bold)
            .fontColor("#ff0000")
            .onClick(() => {
              promptAction.showToast({
                message: '龙华美羊羊',
                duration: 1000,
                bottom: 150
              })
            })
        }
      }
      .width('50%')
    }
  }
}