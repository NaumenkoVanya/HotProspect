//
//  AddingSwiftPackageDependenciesXcode.swift
//  HotProspect
//
//  Created by Ваня Науменко on 11.04.24.
//

import SwiftUI
import SamplePackage

struct AddingSwiftPackageDependenciesXcode: View {
    let possibleNumbers = 1...60
    var results: String {
        let selected = possibleNumbers.random(7).sorted()
        let strings = selected.map(String.init)
        return strings.formatted()
    }
    var body: some View {
        Text(results)
    }
}

#Preview {
    AddingSwiftPackageDependenciesXcode()
}
