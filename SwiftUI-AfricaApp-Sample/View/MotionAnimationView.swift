//
//  MotionAnimationView.swift
//  SwiftUI-AfricaApp-Sample
//
//  Created by ekayaint on 10.08.2023.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircleCount = Int.random(in: 12...16)
    
    // MARK: - Functions
    
    // 1. Random Coordinate
    func randomCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    // 2. Random Size
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 10...300))
    }
    // 3. Random Scale
    // 4. Random Speed
    // 5. Random Delay
    
    
    var body: some View {
        GeometryReader { gr in
            ZStack {
                ForEach(0...randomCircleCount, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .position(x: randomCoordinate(max: gr.size.width), y: randomCoordinate(max: gr.size.height))
                } //: ForEach
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            } //: ZStack
        } //: GeometryReader
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
