//
//  LottieView.swift
//  LottieAnimation
//
//  Created by Sachin Daingade on 03/09/23.
//

import SwiftUI
import Lottie
import UIKit

struct LottieView: UIViewRepresentable {
 
 
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> some UIView {
        let view = UIView(frame: .zero)
        let audioFileName:String = "animation2"
        let audioFile = Bundle.main.path(forResource: audioFileName, ofType: "json")!
        
        let animationView =  LottieAnimationView(filePath: audioFile)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
        return view
    }
 
    func updateUIView(_ uiView: UIViewType, context: Context) {
 
    }
}


