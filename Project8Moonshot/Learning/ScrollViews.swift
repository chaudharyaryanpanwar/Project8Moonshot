//
//  ScrollViews.swift
//  Project8Moonshot
//
//  Created by Aryan Panwar on 12/06/24.
//

import SwiftUI

struct ScrollViews: View {
    var body: some View {
        ScrollView{
            LazyVStack (spacing : 10){
                ForEach(0..<100){
                    CustomText("Item \($0)")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

struct ScrollViews2: View {
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack (spacing : 10){
                ForEach(0..<100){
                    CustomText("Item \($0)")
                        .font(.title)
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

struct CustomText : View {
    let text : String
    var body: some View {
        Text(text)
    }
    init(_ text: String) {
        print("Creating a new Custom Text")
        self.text = text
    }
}

#Preview {
    ScrollViews2()
}
