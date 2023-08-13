//
//  CenterModifier.swift
//  SwiftUI-AfricaApp-Sample
//
//  Created by ekayaint on 13.08.2023.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
