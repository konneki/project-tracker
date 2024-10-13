//
//  Cross.swift
//  project-tracker
//
//  Created by Daniel Konnek on 13.10.2024.
//

import SwiftUI

struct Cross: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 65)
            
            Rectangle()
                .fill(LinearGradient(colors: [Color("Purple"), Color("Green")], startPoint: .top, endPoint: .bottom))
            .frame(width: 5, height: 47)
            
                Rectangle()
                .fill(LinearGradient(colors: [Color("Navy"), Color("Maroon")], startPoint: .leading, endPoint: .trailing))
                .frame(width: 47, height: 5)
        }
    }
}

#Preview {
    Cross()
}
