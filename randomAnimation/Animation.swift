//
//  Animaation.swift
//  randomAnimation
//
//  Created by Сергей Косичкин on 03.06.2021.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: String
    let duration: String
    let delay: String
}

extension Animation {
    static func getAnimation() -> (String, String, Double, Double, Double) {
        
        var animationParameter: (preset: String,
                                 curve: String,
                                 force: Double,
                                 duration: Double,
                                 delay: Double)
        
        animationParameter.preset = DataManager.AnimationPreset.allCases.randomElement()?.rawValue ?? ""
        animationParameter.curve = DataManager.AnimationCurve.allCases.randomElement()?.rawValue ?? ""
        animationParameter.force = Double.random(in: 0...2)
        animationParameter.duration = Double.random(in: 1...3)
        animationParameter.delay = Double.random(in: 0...1)
        
        return animationParameter
    }
}
