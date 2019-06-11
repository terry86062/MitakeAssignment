//
//  ViewController.swift
//  MitakeAssignment
//
//  Created by 黃偉勛 Terry on 2019/6/6.
//  Copyright © 2019 Terry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var lineChartView: LineChartView =
        .ma_FromNib(frame: CGRect(x: 0, y: 200.ma_FitScreen, width: UIScreen.main.bounds.width - 4, height: 500.ma_FitScreen))
    
    lazy var stockInfoProvider = StockDayTickProvider()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        setView()
        
        downloadData()
        
    }
    
    func setView() {
        
        lineChartView.setBaseLine()
        
        view.addSubview(lineChartView)
        
    }
    
    func downloadData() {
        
        switch stockInfoProvider.downloadStockDayTick() {
            
        case .success(let stockDayTick):
            
            lineChartView.setLabel(tp: stockDayTick.tp, cc: stockDayTick.c, bp: stockDayTick.bp)
            
            lineChartView.setPath()
            
            var h: CGFloat = 0
            var ht: CGFloat = 0
            var hc: CGFloat = 0
            var l: CGFloat = 0
            var lt: CGFloat = 0
            var lc: CGFloat = 0
            
            for index in 0..<stockDayTick.tick.count {
                
                let item = stockDayTick.tick[index]
                let t = item.t.cgFloat()
                let c = item.c.cgFloat()
                
                if index == 0 {
                    
                    lineChartView.updatePath(pt: 0, pc: 0, t: t, c: c)
                    
                    l = item.l.cgFloat()
                    lt = t
                    lc = c
                    
                } else {
                    
                    let pItem = stockDayTick.tick[index - 1]
                    let pt = pItem.t.cgFloat()
                    let pc = pItem.c.cgFloat()
                    
                    lineChartView.updatePath(pt: pt, pc: pc, t: t, c: c)
                    
                }
                
                if item.h.cgFloat() > h {
                    
                    h = item.h.cgFloat()
                    ht = t
                    hc = c
                    
                }
                
                if item.l.cgFloat() < l {
                    
                    l = item.l.cgFloat()
                    lt = t
                    lc = c
                    
                }
                
            }
            
            lineChartView.setHLLabel(hl: h, hlt: ht, hlc: hc)
            
            lineChartView.setHLLabel(hl: l, hlt: lt, hlc: lc)
            
        case .failure(let error):
            
            print(error)
            
        }
        
    }

}

