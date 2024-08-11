//
//  ResizingImage.swift
//  Project8Moonshot
//
//  Created by Aryan Panwar on 12/06/24.
//

import SwiftUI

struct ResizingImage: View {
    var body: some View {
        Image(.aldrin)
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal) {size , axis in
                size * 0.8
            }
            .clipped()
    }
}

#Preview {
    ResizingImage()
}
