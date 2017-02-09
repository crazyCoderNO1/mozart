//
//  VirtualGuitar.swift
//  mozart
//
//  Created by David Kwok Ho Chan on 2/9/17.
//  Copyright © 2017 David Kwok Ho Chan. All rights reserved.
//

import Foundation

class VirtualGuitar{
    
    func getFrequencyForString(input : GuitarString) -> Double{
        switch input{
        case .E4: return 329.63
        case .B3: return 246.94
        case .G3: return 196.00
        case .D3: return 146.83
        case .A2: return 110.00
        case .E2: return 82.41
        default: return 0.0
        }
    }
    
    func getClosestString(input : Double) -> GuitarString{
        if input <= 96.205 {
            return GuitarString.E2
        }
        else if input <= 128.415 {
            return GuitarString.A2
        }
        else if input <= 171.415 {
            return GuitarString.D3
        }
        else if input <= 221.47 {
            return GuitarString.G3
        }
        else if input <= 288.285 {
            return GuitarString.B3
        }else {
            return GuitarString.E4
        }
    }
    
    enum GuitarString{
        case E4
        case B3
        case G3
        case D3
        case A2
        case E2
    }
}
