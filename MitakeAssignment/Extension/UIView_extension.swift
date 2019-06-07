//
//  UIView_extension.swift
//  MitakeAssignment
//
//  Created by 黃偉勛 Terry on 2019/6/7.
//  Copyright © 2019 Terry. All rights reserved.
//

import UIKit

extension UIView {
    
    class func ma_FromNib<T: UIView>() -> T {
        
        guard let view = Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)?[0] as? T else { return T() }
        
        return view
        
    }
    
}
