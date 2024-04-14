//
//  ControllingImageInterpolationInSwiftUI.swift
//  HotProspect
//
//  Created by Ваня Науменко on 11.04.24.
//

import SwiftUI

struct ControllingImageInterpolationInSwiftUI: View {
    var body: some View {
        Image(.example)
            .interpolation(.none)
            .resizable()
            .scaledToFit()
            .background(.black)
    }
}

#Preview {
    ControllingImageInterpolationInSwiftUI()
}
