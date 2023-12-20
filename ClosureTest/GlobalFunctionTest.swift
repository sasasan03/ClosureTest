//
//  GlobalFunctionTest.swift
//  ClosureTest
//
//  Created by sako0602 on 2023/12/18.
//
// aaaa
import SwiftUI

class A{
    var num = 0
    func plusOne(){
        num += 1
        print(num)
    }
}

struct B{
    var num = 0
    mutating func plusOne(){
        num += 1
        print(num)
    }
}

//グローバル関数
func globalFunction(){
    print("global")
}

struct GlobalFunctionTest: View {
    
    @State var n = 0
    @State var a = A()
    @State var flag = false
    @State var closure: (Int) -> Int  = { $0 }
    
    var body: some View {
        Button("button"){
            globalFunction()
        }
        Toggle(isOn: $flag, label: {
            Text("Label")
        })
        Button("plusOne"){
            a.plusOne()
            //クロージャ
            let a = closure(10)
            n = a
        }
        Text("\(a.num)")
        Text("\(n)")
    }
}

#Preview {
    GlobalFunctionTest()
}
