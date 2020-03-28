//
//  ThemeRed.swift
//  swiftui_form_data
//
//  Created by Ivan Ivanov on 28.03.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

///create style
struct ThemeTextField: TextFieldStyle {
    public func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10.0)
            .background(Color.red)
            .cornerRadius(5)
    }
}
