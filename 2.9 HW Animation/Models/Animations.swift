//
//  Animations.swift
//  2.9 HW Animation
//
//  Created by Дмитрий Мирошников on 23.04.2022.
//
import Spring

struct Animation {
    static func getRandomAnimation() -> Animation {
        Animation(name: Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? "",
                  curve: Spring.AnimationCurve.allCases.randomElement()?.rawValue ?? "",
                  force: Double.random(in: 1...3),
                  duration: Double.random(in: 0.1...2),
                  delay: Double.random(in: 0.1...2))
    }
    
    let name: Spring.AnimationPreset.RawValue
    let curve: Spring.AnimationCurve.RawValue
    let force: Double
    let duration: Double
    let delay: Double
}


