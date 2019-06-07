//
//  ViewController.swift
//  MitakeAssignment
//
//  Created by 黃偉勛 Terry on 2019/6/6.
//  Copyright © 2019 Terry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var lineChartView: LineChartView = .ma_FromNib()
    
    lazy var stockInfoProvider = StockDayTickProvider()
    
    lazy var shapeLayer = CAShapeLayer()
    
    lazy var path = UIBezierPath()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        shapeLayer.fillColor = UIColor.black.cgColor
        shapeLayer.lineWidth = 1
        shapeLayer.strokeColor = UIColor.green.cgColor
        
        path.move(to: CGPoint(x: 50, y: 300))
        
        downloadData()
        
        setView()
        
    }
    
    func setView() {
        
        lineChartView.frame = CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 500)
        
        view.addSubview(lineChartView)
        
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

