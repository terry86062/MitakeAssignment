//
//  String_extension.swift
//  MitakeAssignment
//
//  Created by 黃偉勛 Terry on 2019/6/10.
//  Copyright © 2019 Terry. All rights reserved.
//

import UIKit

extension String {
    
    func stringToCGFloat() -> CGFloat {
        
        let cgFloat: CGFloat = 0
        
        guard let doubleValue = Double(self) else { return cgFloat }
        
        return CGFloat(doubleValue)
        
    }
    
}
