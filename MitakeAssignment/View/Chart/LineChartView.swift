//
//  LineChartView.swift
//  MitakeAssignment
//
//  Created by 黃偉勛 Terry on 2019/6/7.
//  Copyright © 2019 Terry. All rights reserved.
//

import UIKit

class LineChartView: UIView {
    
    lazy var shapeLayer = CAShapeLayer()
    
    lazy var path = UIBezierPath()
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        let w = self.frame.width
        
        let h = self.frame.height
        
        createBaseLine(start: CGPoint(x: w * 2/11, y: 0), end: CGPoint(x: w, y: 0))
        createBaseLine(start: CGPoint(x: w * 2/11, y: h * 5/21), end: CGPoint(x: w, y: h * 5/21))
        createBaseLine(start: CGPoint(x: w * 2/11, y: h * 10/21), end: CGPoint(x: w, y: h * 10/21))
        createBaseLine(start: CGPoint(x: w * 2/11, y: h * 15/21), end: CGPoint(x: w, y: h * 15/21))
        createBaseLine(start: CGPoint(x: w * 2/11, y: h * 20/21), end: CGPoint(x: w, y: h * 20/21))
        
        createBaseLine(start: CGPoint(x: w * 2/11, y: 0), end: CGPoint(x: w * 2/11, y: h * 20/21))
        createBaseLine(start: CGPoint(x: w * 4/11, y: 0), end: CGPoint(x: w * 4/11, y: h * 20/21))
        createBaseLine(start: CGPoint(x: w * 6/11, y: 0), end: CGPoint(x: w * 6/11, y: h * 20/21))
        createBaseLine(start: CGPoint(x: w * 8/11, y: 0), end: CGPoint(x: w * 8/11, y: h * 20/21))
        createBaseLine(start: CGPoint(x: w * 10/11, y: 0), end: CGPoint(x: w * 10/11, y: h * 20/21))
        createBaseLine(start: CGPoint(x: w, y: 0), end: CGPoint(x: w, y: h * 20/21))
        
    }
    
    func createBaseLine(start: CGPoint, end: CGPoint) {
        
        let shapeLayer = CAShapeLayer()
        
        let path = UIBezierPath()
        
        shapeLayer.lineWidth = 0.5
        
        shapeLayer.strokeColor = UIColor.gray.cgColor
        
        path.move(to: start)
        
        path.addLine(to: end)
        
        shapeLayer.path = path.cgPath
        
        self.layer.addSublayer(shapeLayer)
        
    }
    
}
