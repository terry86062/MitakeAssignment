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

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setView()
        
        downloadData()
        
    }
    
    func setView() {
        
        lineChartView.frame = CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 500)
        
        view.addSubview(lineChartView)
        
    }
    
    func downloadData() {
        
        switch stockInfoProvider.downloadStockDayTick() {
            
        case .success(let stockDayTick):
            
            lineChartView.setLabel(tp: stockDayTick.tp, c: stockDayTick.c, bp: stockDayTick.bp)
            
            let cc = stockDayTick.c.stringToCGFloat()
            let tp = stockDayTick.tp.stringToCGFloat()
            let bp = stockDayTick.bp.stringToCGFloat()
            
            lineChartView.setPath(cc: cc, tp: tp, bp: bp)
            
            var h: CGFloat = 0
            var ht: CGFloat = 0
            var hc: CGFloat = 0
            var l: CGFloat = 0
            var lt: CGFloat = 0
            var lc: CGFloat = 0
            
            for index in 0..<stockDayTick.tick.count {
                
                let item = stockDayTick.tick[index]
                
                let t = item.t.stringToCGFloat()
                let c = item.c.stringToCGFloat()
                
                if index > 0 {
                    
                    let pItem = stockDayTick.tick[index - 1]
                    
                    let pt = pItem.t.stringToCGFloat()
                    let pc = pItem.c.stringToCGFloat()
                    
                    lineChartView.updatePath(pt: pt, pc: pc, t: t, c: c)
                    
                } else {
                    
                    lineChartView.updatePath(pt: 0, pc: 0, t: t, c: c)
                    
                }
                
                if item.h.stringToCGFloat() > h {
                    
                    h = item.h.stringToCGFloat()
                    ht = t
                    hc = c
                    
                }
                
                if index == 0 {
                    
                    l = item.l.stringToCGFloat()
                    lt = t
                    lc = c
                    
                }
                
                if item.l.stringToCGFloat() < l {
                    
                    l = item.l.stringToCGFloat()
                    lt = t
                    lc = c
                    
                }
                
            }
            
            lineChartView.setHLabel(h: h, ht: ht, hc: hc)
            
            lineChartView.setLLabel(l: l, lt: lt, lc: lc)
            
        case .failure(let error):
            
            print(error)
            
        }
        
    }

}

