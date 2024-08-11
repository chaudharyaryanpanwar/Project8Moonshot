//
//  HowToLayOutViewsInAScrollingGrid.swift
//  Project8Moonshot
//
//  Created by Aryan Panwar on 12/06/24.
//

import SwiftUI

struct HowToLayOutViewsInAScrollingGrid: View {
    let layout = [
        GridItem(.adaptive(minimum: 80)) ,
        GridItem(.adaptive(minimum: 80)) ,
        GridItem(.adaptive(minimum: 80)) 
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns : layout ){
                ForEach(0..<1000){
                    Text("Item \($0)")
                }
            }
        }
    }
}

#Preview {
    HowToLayOutViewsInAScrollingGrid()
}
