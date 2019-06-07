//
//  ViewController.swift
//  MitakeAssignment
//
//  Created by 黃偉勛 Terry on 2019/6/6.
//  Copyright © 2019 Terry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let stockInfoProvider = StockDayTickProvider()
    
    let shapeLayer = CAShapeLayer()
    let path = UIBezierPath()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        shapeLayer.fillColor = UIColor.black.cgColor
        shapeLayer.lineWidth = 1
        shapeLayer.strokeColor = UIColor.green.cgColor
        
        path.move(to: CGPoint(x: 50, y: 300))
        
        downloadData()
        
        createBaseLine(start: CGPoint(x: 50, y: 100), end: CGPoint(x: 320, y: 100))
        createBaseLine(start: CGPoint(x: 50, y: 200), end: CGPoint(x: 320, y: 200))
        createBaseLine(start: CGPoint(x: 50, y: 300), end: CGPoint(x: 320, y: 300))
        createBaseLine(start: CGPoint(x: 50, y: 400), end: CGPoint(x: 320, y: 400))
        createBaseLine(start: CGPoint(x: 50, y: 500), end: CGPoint(x: 320, y: 500))
        
        createBaseLine(start: CGPoint(x: 50, y: 100), end: CGPoint(x: 50, y: 500))
        createBaseLine(start: CGPoint(x: 110, y: 100), end: CGPoint(x: 110, y: 500))
        createBaseLine(start: CGPoint(x: 170, y: 100), end: CGPoint(x: 170, y: 500))
        createBaseLine(start: CGPoint(x: 230, y: 100), end: CGPoint(x: 230, y: 500))
        createBaseLine(start: CGPoint(x: 290, y: 100), end: CGPoint(x: 290, y: 500))
        createBaseLine(start: CGPoint(x: 320, y: 100), end: CGPoint(x: 320, y: 500))
        
    }
    
    func createBaseLine(start: CGPoint, end: CGPoint) {
        
        let shapeLayer = CAShapeLayer()
        let path = UIBezierPath()
        
        shapeLayer.lineWidth = 0.5
        shapeLayer.strokeColor = UIColor.gray.cgColor
        
        path.move(to: start)
        path.addLine(to: end)
        
        shapeLayer.path = path.cgPath
        
        view.layer.addSublayer(shapeLayer)
        
    }
    
    func downloadData() {
        
        switch stockInfoProvider.downloadStockDayTick() {
            
        case .success(let stockInfo):
            
            guard let cc = Double(stockInfo.c), let tp = Double(stockInfo.tp), let bp = Double(stockInfo.bp) else { return }
            
            for item in stockInfo.tick {
                
                guard let t = Double(item.t), let c = Double(item.c) else { return }
                
                if c > cc {
                    
                    let y = 200 * (c - cc) / (tp - cc)
                    
                    path.addLine(to: CGPoint(x: 50 + t, y: 300 - y))
                    
                } else if c < cc {
                    
                    let y = 200 * (cc - c) / (cc - bp)
                    
                    path.addLine(to: CGPoint(x: 50 + t, y: 300 + y))
                    
                } else {
                    
                    path.addLine(to: CGPoint(x: 50 + t, y: 300))
                    
                }
                
            }
            
            shapeLayer.path = path.cgPath
            
            view.layer.addSublayer(shapeLayer)
            
        case .failure(let error):
            
            print(error)
            
        }
        
    }

}

