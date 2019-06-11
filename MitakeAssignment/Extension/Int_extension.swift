//
//  Int_extension.swift
//  MitakeAssignment
//
//  Created by 黃偉勛 Terry on 2019/6/11.
//  Copyright © 2019 Terry. All rights reserved.
//

import UIKit

extension Int {
    
    var ma_FitScreen: CGFloat {
        
        return CGFloat(self) * UIScreen.main.bounds.width / 414
        
    }
    
}
