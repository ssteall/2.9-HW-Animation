//
//  DataManager.swift
//  2.9 HW Animation
//
//  Created by Дмитрий Мирошников on 24.04.2022.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    var names = Spring.AnimationPreset.allCases
    var curves = Spring.AnimationCurve.allCases
    
    private init(){}
}
