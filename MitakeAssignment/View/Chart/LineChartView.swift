//
//  LineChartView.swift
//  MitakeAssignment
//
//  Created by 黃偉勛 Terry on 2019/6/7.
//  Copyright © 2019 Terry. All rights reserved.
//

import UIKit

class LineChartView: UIView {
    
    lazy var shapeLayers: [CAShapeLayer] = []
    
    lazy var paths: [UIBezierPath] = []
    
    lazy var w = self.frame.width
    
    lazy var h = self.frame.height
    
    lazy var isRed = true
    
    lazy var cc: CGFloat = 0
    
    lazy var tp: CGFloat = 0
    
    lazy var bp: CGFloat = 0
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        setBaseLine()
        
    }
    
    func setBaseLine() {
        
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
    
    func setPath(cc: CGFloat, tp: CGFloat, bp: CGFloat) {
        
        self.cc = cc
        
        self.tp = tp
        
        self.bp = bp
        
        shapeLayers.append(CAShapeLayer())
        
        paths.append(UIBezierPath())
        
        shapeLayers.last?.lineWidth = 1
        
        paths.last?.move(to: CGPoint(x: w * 2/11, y: h * 10/21))
        
    }
    
    func updatePath(pt: CGFloat, pc: CGFloat, t: CGFloat, c: CGFloat) {
        
        startUpdatePath(t: t, c: c)

        let tX = w * 2/11 + (w * 9/11) * t / 270
        
        if c >= cc && isRed == true {
            
            let ccc = c - cc
            
            let tpcc = tp - cc
            
            let y = (h * 10/21) * ccc / tpcc

            paths.last?.addLine(to: CGPoint(x: tX, y: (h * 10/21) - y))
            
            print("point: \((h * 10/21) - y)")
            
        } else if c < cc && isRed == true {
            
            let y = (h * 10/21) * (cc - c) / (cc - bp)

            let ptX = w * 2/11 + w * 9/11 * pt / 270

            let yy = (h * 10/21) * (pc - cc) / (tp - cc)

            let xx = yy * (tX - ptX) / (yy + y)

            if pc != cc {

                paths.last?.addLine(to: CGPoint(x: ptX + xx, y: h * 10/21))
                
                print("point: \(h * 10/21)")

            }

            shapeLayers.last?.path = paths.last?.cgPath

            self.layer.addSublayer(shapeLayers.last ?? CAShapeLayer())

            shapeLayers.append(CAShapeLayer())

            paths.append(UIBezierPath())

            shapeLayers.last?.lineWidth = 1

            if pc == cc {

                paths.last?.move(to: CGPoint(x: ptX, y: h * 10/21))
                
                print("point: \(h * 10/21)")

            } else {

                paths.last?.move(to: CGPoint(x: ptX + xx, y: h * 10/21))
                
                print("point: \(h * 10/21)")

            }

            isRed = false

            shapeLayers.last?.fillColor = UIColor.green.cgColor

            shapeLayers.last?.strokeColor = UIColor.green.cgColor

            paths.last?.addLine(to: CGPoint(x: tX, y: (h * 10/21) + y))
            
            print("point: \((h * 10/21) + y)")
            
        } else if c < cc && isRed == false {
            
            let ccc = cc - c
            
            let ccbp = cc - bp
            
            let y = (h * 10/21) * ccc / ccbp

            paths.last?.addLine(to: CGPoint(x: tX, y: (h * 10/21) + y))
            
            print("point: \((h * 10/21) + y)")
            
        } else if c >= cc && isRed == false {
            
            let y = (h * 10/21) * (c - cc) / (tp - cc)

            let ptX = w * 2/11 + w * 9/11 * pt / 270

            let yy = (h * 10/21) * (cc - pc) / (cc - bp)

            let xx = yy * (tX - ptX) / (yy + y)

            if pc != cc {

                paths.last?.addLine(to: CGPoint(x: ptX + xx, y: h * 10/21))
                
                print("point: \(h * 10/21)")

            }

            shapeLayers.last?.path = paths.last?.cgPath

            self.layer.addSublayer(shapeLayers.last ?? CAShapeLayer())

            shapeLayers.append(CAShapeLayer())

            paths.append(UIBezierPath())

            shapeLayers.last?.lineWidth = 1

            if pc == cc {

                paths.last?.move(to: CGPoint(x: ptX, y: h * 10/21))
                
                print("point: \(h * 10/21)")

            } else {

                paths.last?.move(to: CGPoint(x: ptX + xx, y: h * 10/21))
                
                print("point: \(h * 10/21)")

            }

            isRed = true

            shapeLayers.last?.fillColor = UIColor.red.cgColor

            shapeLayers.last?.strokeColor = UIColor.red.cgColor

            paths.last?.addLine(to: CGPoint(x: tX, y: (h * 10/21) - y))
            
            print("point: \((h * 10/21) - y)")
            
        }
        
        endUpdatePath(t: t, tX: tX)
        
    }
    
    func startUpdatePath(t: CGFloat, c: CGFloat) {
        
        if t == 1 {
            
            if c >= cc {
                
                isRed = true
                
                shapeLayers.last?.fillColor = UIColor.red.cgColor
                
                shapeLayers.last?.strokeColor = UIColor.red.cgColor
                
            } else {
                
                isRed = false
                
                shapeLayers.last?.fillColor = UIColor.green.cgColor
                
                shapeLayers.last?.strokeColor = UIColor.green.cgColor
                
            }
            
        }
        
    }
    
    func endUpdatePath(t: CGFloat, tX: CGFloat) {
        
        if t == 270 {
            
            paths.last?.addLine(to: CGPoint(x: tX, y: h * 10/21))
            
            shapeLayers.last?.path = paths.last?.cgPath
            
            self.layer.addSublayer(shapeLayers.last ?? CAShapeLayer())
            
        }
        
    }
    
    func setLabel(tp: String, c: String, bp: String) {
        
        guard let ntp = Double(tp), let nc = Double(c), let nbp = Double(bp) else { return }
        
        let mtp = ((ntp + nc) / 2) * 100
        
        let nmtp = (mtp.rounded(.down)) / 100
        
        let mbp = ((nc + nbp) / 2) * 100
        
        let nmbp = (mbp.rounded(.down)) / 100
        
        createLabel(position: 0, backgroundColor: .red, text: tp, textColor: .white)
        
        createLabel(position: (h * 5/21) - 10, backgroundColor: .clear, text: "\(nmtp)", textColor: .red)
        
        createLabel(position: (h * 10/21) - 10, backgroundColor: .clear, text: c, textColor: .white)
        
        createLabel(position: (h * 15/21) - 10, backgroundColor: .clear, text: "\(nmbp)", textColor: .green)
        
        createLabel(position: (h * 20/21) - 20, backgroundColor: .green, text: bp, textColor: .white)
        
        createTimeLabel(position: w * 2/11, text: "09", textAlignment: .left)
        createTimeLabel(position: (w * 4/11) - 15, text: "10")
        createTimeLabel(position: (w * 6/11) - 15, text: "11")
        createTimeLabel(position: (w * 8/11) - 15, text: "12")
        createTimeLabel(position: (w * 10/11) - 15, text: "13")
        
    }
    
    func createLabel(position: CGFloat, backgroundColor: UIColor, text: String, textColor: UIColor) {
        
        let label = UILabel(frame: CGRect(x: (w * 2/11) / 4, y: position, width: (w * 2/11) * 3/4, height: 20))
        
        label.backgroundColor = backgroundColor
        
        label.text = text
        
        label.textColor = textColor
        
        label.textAlignment = .right
        
        self.addSubview(label)
        
    }
    
    func createTimeLabel(position: CGFloat, text: String, textAlignment: NSTextAlignment = .center) {
        
        let label = UILabel(frame: CGRect(x: position, y: h * 20/21, width: 30, height: 20))
        
        label.text = text
        
        label.textColor = .white
        
        label.textAlignment = textAlignment
        
        self.addSubview(label)
        
    }
    
    func setHLabel(h: CGFloat, ht: CGFloat, hc: CGFloat) {
        
        let shapeLayer = CAShapeLayer()
        
        let path = UIBezierPath()
        
        shapeLayer.lineWidth = 1
        
        shapeLayer.strokeColor = UIColor.red.cgColor
        
        let tX = w * 2/11 + (w * 9/11) * ht / 270
        
        let y = (self.h * 10/21) * (h - cc) / (tp - cc)
        
        let oy = (self.h * 10/21) * (hc - cc) / (tp - cc)
        
        var label = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        path.move(to: CGPoint(x: tX, y: (self.h * 10/21) - oy))
        
        if (tX - 15) >= w * 2/11 {
            
            label = UILabel(frame: CGRect(x: tX - 15, y: (self.h * 10/21) - y - 15, width: 30, height: 15))
            
            path.addLine(to: CGPoint(x: tX, y: (self.h * 10/21) - y))
            
            print("label: \((self.h * 10/21) - y - 15)")
            
        } else {
            
            label = UILabel(frame: CGRect(x: w * 2/11, y: (self.h * 10/21) - y - 15, width: 30, height: 15))
            
            path.addLine(to: CGPoint(x: tX, y: (self.h * 10/21) - y))
            
            print("label: \((self.h * 10/21) - y - 15)")
            
        }
        
        label.text = String(format: "%.02f", h)
        
        label.textColor = .white
        
        label.textAlignment = .center
        
        label.font = label.font.withSize(10)
        
        self.addSubview(label)
        
        shapeLayer.path = path.cgPath
        
        self.layer.addSublayer(shapeLayer)
        
    }
    
    func setLLabel(l: CGFloat, lt: CGFloat, lc: CGFloat) {
        
        let shapeLayer = CAShapeLayer()
        
        let path = UIBezierPath()
        
        shapeLayer.lineWidth = 1
        
        shapeLayer.strokeColor = UIColor.green.cgColor
        
        let tX = w * 2/11 + (w * 9/11) * lt / 270
        
        let y = (self.h * 10/21) * (cc - l) / (cc - bp)
        
        let oy = (self.h * 10/21) * (cc - lc) / (cc - bp)
        
        var label = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        path.move(to: CGPoint(x: tX, y: (self.h * 10/21) + oy))
        
        if (tX - 15) >= w * 2/11 {
            
            label = UILabel(frame: CGRect(x: tX - 15, y: (self.h * 10/21) + y, width: 30, height: 15))
            
            path.addLine(to: CGPoint(x: tX, y: (self.h * 10/21) + y))
            
            print("label: \((self.h * 10/21) + y)")
            
        } else {
            
            label = UILabel(frame: CGRect(x: w * 2/11, y: (self.h * 10/21) + y, width: 30, height: 15))
            
            path.addLine(to: CGPoint(x: tX, y: (self.h * 10/21) + y))
            
            print("label: \((self.h * 10/21) + y)")
            
        }
        
        label.text = String(format: "%.02f", l)
        
        label.textColor = .white
        
        label.textAlignment = .center
        
        label.font = label.font.withSize(10)
        
        self.addSubview(label)
        
        shapeLayer.path = path.cgPath
        
        self.layer.addSublayer(shapeLayer)
        
    }
    
}
