//
//  tecsPicker SwiftUI
//  https://github.com/tecspda/swiftui_other
//
//  Created by tecspda on 14.09.2021.
//

import SwiftUI

struct LangSelectView: View {
    @State var selected = 2
    
    var body: some View {
        if selected == 1 {
        HStack{
            Text("􀇄 " + "Language" + ":")
            Spacer()
            HStack{
                Button(action: { self.selected = 1 }, label: {
                    Text("Russian").frame(width: 55)
                }).cornerRadius(20)
                Button(action: { self.selected = 2 }, label: {
                    Text("English").frame(width: 55)
                })
                .cornerRadius(15)
                .buttonStyle(PlainButtonStyle())
                .foregroundColor(.white)
                .padding(.trailing, 10)
            }.padding(3).background(Color.green).frame(alignment: .trailing).cornerRadius(20)
        }.padding(.bottom,3)
        } else {
        HStack{
            Text("􀇄 " + "Language" + ":")
            Spacer()
            HStack{
                Button(action: { self.selected = 1 }, label: {
                    Text("Russian").frame(width: 55)
                })
                .cornerRadius(15)
                .buttonStyle(PlainButtonStyle())
                .foregroundColor(.white)
                .padding(.leading, 10)
                Button(action: { self.selected = 2 }, label: {
                    Text("English").frame(width: 55)
                }).cornerRadius(20)
            }.padding(3).background(Color.green).frame(alignment: .trailing).cornerRadius(20)
        }
        }
    }
}
