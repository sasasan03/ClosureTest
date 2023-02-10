//
//  ContentView.swift
//  ClosureTest
//
//  Created by sako0602 on 2023/02/10.
//

import SwiftUI

struct ContentView: View {
    @State var numText1 = ""
    @State var numText2 = ""
    @State var numText3 = ""
    @State var numText4 = ""
    @State var numText5 = ""
    @State var total = 0
    
       var body: some View {
           ZStack{
               Color.green
               VStack{
                   TextField("", text: $numText1)
                       .textFieldStyle(.roundedBorder)
                       .frame(width: 100)
                   TextField("", text: $numText2)
                       .textFieldStyle(.roundedBorder)
                       .frame(width: 100)
                   TextField("", text: $numText3)
                       .textFieldStyle(.roundedBorder)
                       .frame(width: 100)
                   TextField("", text: $numText4)
                       .textFieldStyle(.roundedBorder)
                       .frame(width: 100)
                   TextField("", text: $numText5)
                       .textFieldStyle(.roundedBorder)
                       .frame(width: 100)
                   Button {
                       calc()
                   } label: {
                       Text("Button")
                   }
                   Text("\(total)")
               }
           }
       }
    func calc() {
        func textFieldParse(parse: (String) -> Int, number: String) -> Int {
            parse(number)
        }
        let num1 = textFieldParse(parse: { text in return Int(text) ?? 0 }, number: numText1)
        let num2 = textFieldParse(parse: { text in return Int(text) ?? 0 }, number: numText2)
        let num3 = textFieldParse(parse: { text in return Int(text) ?? 0 }, number: numText3)
        let num4 = textFieldParse(parse: { text in return Int(text) ?? 0 }, number: numText4)
        let num5 = textFieldParse(parse: { text in return Int(text) ?? 0 }, number: numText5)
        total = num1 + num2 + num3 + num4 + num5
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
