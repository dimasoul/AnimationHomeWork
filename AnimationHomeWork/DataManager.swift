//
//  DataManager.swift
//  AnimationHomeWork
//
//  Created by Дмитрий on 13.01.2022.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations: [Spring.AnimationPreset] = [
        .fadeIn,
        .fadeInDown,
        .fadeInLeft,
        .fadeInRight,
        .fadeInDown,
        .fall,
        .flash,
        .flipX,
        .flipY,
        .pop,
        .swing
    ]
    let curves = Spring.AnimationPreset.allCases
    
    private init() {}
    
}
