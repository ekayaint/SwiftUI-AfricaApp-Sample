//
//  MotionAnimationView.swift
//  SwiftUI-AfricaApp-Sample
//
//  Created by ekayaint on 10.08.2023.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircleCount = Int.random(in: 12...16)
    @State private var isAnimating: Bool = false
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
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    // 4. Random Speed
    func randomSpeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }
    // 5. Random Delay
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        GeometryReader { gr in
            ZStack {
                ForEach(0...randomCircleCount, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .position(x: randomCoordinate(max: gr.size.width), y: randomCoordinate(max: gr.size.height))
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                            , value: isAnimating)
                        .onAppear(perform: {
                            isAnimating = true
                        })
                } //: ForEach
                 
            } //: ZStack
            .drawingGroup()
        } //: GeometryReader
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
