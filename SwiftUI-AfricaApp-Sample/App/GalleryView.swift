//
//  GalleryView.swift
//  SwiftUI-AfricaApp-Sample
//
//  Created by ekayaint on 18.07.2023.
//

import SwiftUI

struct GalleryView: View {
    let gridLayout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            // MARK: - Grid
            
            LazyVGrid(columns: gridLayout,alignment: .center, spacing: 10) {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    Text("Gallery")
                }
            }
        } //: ScrollView
        .frame(maxWidth: .infinity, maxHeight: .infinity)
       // .background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
