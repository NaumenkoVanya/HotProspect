//
//  CreatingContextMenus.swift
//  HotProspect
//
//  Created by Ваня Науменко on 11.04.24.
//

import SwiftUI

struct CreatingContextMenus: View {
    @State private var backgroundColor = Color.red
    var body: some View {
        VStack {
            Text("Hello, World!")
                .padding()
                .background(backgroundColor)
            Text("Change color")
                .padding()
                .contextMenu {
                    Button("Red", systemImage: "checkmark.circle.fill", role: .destructive) {
                        backgroundColor = .red
                    }
                    .foregroundStyle(.red)
                    Button("Green") {
                        backgroundColor = .green
                    }
                    Button("Blue") {
                        backgroundColor = .blue
                    }
                }
        }
    }
}

#Preview {
    CreatingContextMenus()
}
