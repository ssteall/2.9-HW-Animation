//
//  Animations.swift
//  2.9 HW Animation
//
//  Created by Дмитрий Мирошников on 23.04.2022.
//

struct Animation {
    static func getRandomAnimation() -> Animation {
        Animation(name: DataManager.shared.names.randomElement()?.rawValue ?? "",
                  curve: DataManager.shared.curves.randomElement()?.rawValue ?? "",
                  force: Double.random(in: 1...3),
                  duration: Double.random(in: 0.5...2),
                  delay: Double.random(in: 0.1...1))
    }
    
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
}


