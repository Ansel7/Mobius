//
//  CustomTextField.swift
//  Mobius
//
//  Created by Abraham Bojorquez on 6/22/22.
//

import SwiftUI

struct CustomTextField: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding(15)
            .padding(.leading, 36)
            .background(.white)
            .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous)
                .stroke()
                .fill(.black.opacity(0.1))
            )
    }
}

extension View{
    func customTextField() -> some View {
        modifier(CustomTextField())
    }
}
