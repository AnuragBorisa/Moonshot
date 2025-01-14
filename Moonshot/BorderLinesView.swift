//
//  BorderLinesView.swift
//  Moonshot
//
//  Created by Anurag on 14/01/25.
//

import SwiftUI

struct BorderLinesView: View {
    var body: some View {
        Rectangle()
            .frame(height:2)
            .foregroundStyle(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    BorderLinesView()
}
