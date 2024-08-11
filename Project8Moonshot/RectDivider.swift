//
//  RectDivider.swift
//  Project8Moonshot
//
//  Created by Aryan Panwar on 13/06/24.
//

import SwiftUI

struct RectDivider: View {
    var body: some View {
        Rectangle()
            .frame(height : 2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    RectDivider()
}
