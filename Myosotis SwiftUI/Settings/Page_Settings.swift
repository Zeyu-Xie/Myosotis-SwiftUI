import SwiftUI
import Foundation

struct Page_Settings: View {
    @AppStorage("fontSize") private var fontSize = 12.0
    
    var body: some View {
        Form {
            Slider(value: $fontSize, in: 9...96) {
                Text("Font Size (parody) (\(fontSize, specifier: "%.0f") pts)")
            }
        }
        .padding(20)
        .frame(width: 350, height: 100)
    }
}
