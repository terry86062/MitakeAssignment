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
    
    lazy var ow = self.frame.width / 11
    
    lazy var w = self.frame.width
    
    lazy var oh = self.frame.height / 21
    
    lazy var h = self.frame.height
    
    lazy var isRed = true
    
    lazy var cc: CGFloat = 0
    
    lazy var tpcc: CGFloat = 0
    
    private func createLine(start: CGPoint, end: CGPoint, width: CGFloat = 0.5, color: UIColor = .gray) {
        
        let shapeLayer = CAShapeLayer()
        
        let path = UIBezierPath()
        
        shapeLayer.lineWidth = width
        
        shapeLayer.strokeColor = color.cgColor
        
        path.move(to: start)
        
        path.addLine(to: end)
        
        shapeLayer.path = path.cgPath
        
        self.layer.addSublayer(shapeLayer)
        
    }
    
    func setBaseLine() {
        
        createLine(start: CGPoint(x: ow * 2, y: 0), end: CGPoint(x: w, y: 0))
        createLine(start: CGPoint(x: ow * 2, y: oh * 5), end: CGPoint(x: w, y: oh * 5))
        createLine(start: CGPoint(x: ow * 2, y: oh * 10), end: CGPoint(x: w, y: oh * 10))
        createLine(start: CGPoint(x: ow * 2, y: oh * 15), end: CGPoint(x: w, y: oh * 15))
        createLine(start: CGPoint(x: ow * 2, y: oh * 20), end: CGPoint(x: w, y: oh * 20))
        
        createLine(start: CGPoint(x: ow * 2, y: 0), end: CGPoint(x: ow * 2, y: oh * 20))
        createLine(start: CGPoint(x: ow * 4, y: 0), end: CGPoint(x: ow * 4, y: oh * 20))
        createLine(start: CGPoint(x: ow * 6, y: 0), end: CGPoint(x: ow * 6, y: oh * 20))
        createLine(start: CGPoint(x: ow * 8, y: 0), end: CGPoint(x: ow * 8, y: oh * 20))
        createLine(start: CGPoint(x: ow * 10, y: 0), end: CGPoint(x: ow * 10, y: oh * 20))
        createLine(start: CGPoint(x: w, y: 0), end: CGPoint(x: w, y: oh * 20))
        
    }
    
    func setLabel(tp: String, cc: String, bp: String) {
        
        guard let ntp = Double(tp), let ncc = Double(cc), let nbp = Double(bp) else { return }
        
        let mtp = ((ntp + ncc) / 2) * 100
        
        let nmtp = (mtp.rounded(.down)) / 100
        
        let mbp = ((ncc + nbp) / 2) * 100
        
        let nmbp = (mbp.rounded(.down)) / 100
        
        createLabel(position: 0, backgroundColor: .red, text: tp, textColor: .white)
        createLabel(position: oh * 5 - 10, backgroundColor: .clear, text: "\(nmtp)", textColor: .red)
        createLabel(position: oh * 10 - 10, backgroundColor: .clear, text: cc, textColor: .white)
        createLabel(position: oh * 15 - 10, backgroundColor: .clear, text: "\(nmbp)", textColor: .green)
        createLabel(position: oh * 20 - 20, backgroundColor: .green, text: bp, textColor: .white)
        
        createTimeLabel(position: ow * 2, text: "09", textAlignment: .left)
        createTimeLabel(position: ow * 4 - 15, text: "10")
        createTimeLabel(position: ow * 6 - 15, text: "11")
        createTimeLabel(position: ow * 8 - 15, text: "12")
        createTimeLabel(position: ow * 10 - 15, text: "13")
        
        self.cc = CGFloat(ncc)
        
        self.tpcc = CGFloat(ntp - ncc)
        
    }
    
    private func createLabel(position: CGFloat, backgroundColor: UIColor, text: String, textColor: UIColor) {
        
        let label = UILabel(frame: CGRect(x: (ow * 2) / 4, y: position, width: (ow * 2) * 3 / 4, height: 20))
        
        label.backgroundColor = backgroundColor
        
        label.text = text
        
        label.textColor = textColor
        
        label.textAlignment = .right
        
        self.addSubview(label)
        
    }
    
    private func createTimeLabel(position: CGFloat, text: String, textAlignment: NSTextAlignment = .center) {
        
        let label = UILabel(frame: CGRect(x: position, y: oh * 20, width: 30, height: 20))
        
        label.text = text
        
        label.textColor = .white
        
        label.textAlignment = textAlignment
        
        self.addSubview(label)
        
    }
    
    func setPath() {
        
        shapeLayers.append(CAShapeLayer())
        
        paths.append(UIBezierPath())
        
        shapeLayers.last?.lineWidth = 1
        
        paths.last?.move(to: CGPoint(x: ow * 2, y: oh * 10))
        
    }
    
    func updatePath(pt: CGFloat, pc: CGFloat, t: CGFloat, c: CGFloat) {
        
        startUpdatePath(t: t, c: c)

        let tX = ow * 2 + (ow * 9) * t / 270
        
        if (c >= cc && isRed == true) || (c < cc && isRed == false) {
            
            let y = (oh * 10) * (c - cc) / tpcc

            paths.last?.addLine(to: CGPoint(x: tX, y: (oh * 10) - y))
            
        } else if (c < cc && isRed == true) || (c >= cc && isRed == false) {
            
            let y = (oh * 10) * (cc - c) / tpcc

            let ptX = ow * 2 + (ow * 9) * pt / 270

            let yy = (oh * 10) * (pc - cc) / tpcc

            let xx = yy * (tX - ptX) / (yy + y)

            if pc != cc {

                paths.last?.addLine(to: CGPoint(x: ptX + xx, y: oh * 10))

            }

            shapeLayers.last?.path = paths.last?.cgPath

            self.layer.addSublayer(shapeLayers.last ?? CAShapeLayer())

            shapeLayers.append(CAShapeLayer())

            paths.append(UIBezierPath())

            shapeLayers.last?.lineWidth = 1

            if pc == cc {

                paths.last?.move(to: CGPoint(x: ptX, y: oh * 10))

            } else {

                paths.last?.move(to: CGPoint(x: ptX + xx, y: oh * 10))

            }

            if isRed == true {
                
                isRed = false
                
                shapeLayers.last?.fillColor = UIColor.green.cgColor
                
                shapeLayers.last?.strokeColor = UIColor.green.cgColor
                
            } else {
                
                isRed = true
    
                shapeLayers.last?.fillColor = UIColor.red.cgColor
    
                shapeLayers.last?.strokeColor = UIColor.red.cgColor
                
            }

            paths.last?.addLine(to: CGPoint(x: tX, y: (oh * 10) + y))
            
        }
        
        endUpdatePath(t: t, tX: tX)
        
    }
    
    private func startUpdatePath(t: CGFloat, c: CGFloat) {
        
        guard t == 1 else { return }
            
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
    
    private func endUpdatePath(t: CGFloat, tX: CGFloat) {
        
        guard t == 270 else { return }
            
        paths.last?.addLine(to: CGPoint(x: tX, y: oh * 10))
        
        shapeLayers.last?.path = paths.last?.cgPath
        
        self.layer.addSublayer(shapeLayers.last ?? CAShapeLayer())
        
    }
    
    func setHLLabel(hl: CGFloat, hlt: CGFloat, hlc: CGFloat) {
        
        let tX = ow * 2 + (ow * 9) * hlt / 270
        
        let y = (oh * 10) * (hl - cc) / tpcc
        
        let oy = (oh * 10) * (hlc - cc) / tpcc
        
        var label = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        if (hl - cc) > 0 {
            
            createLine(start: CGPoint(x: tX, y: (oh * 10) - oy),
                       end: CGPoint(x: tX, y: (oh * 10) - y), width: 1, color: .red)
            
            if (tX - 15) >= ow * 2 {
                
                label = UILabel(frame: CGRect(x: tX - 15, y: (oh * 10) - y - 15, width: 30, height: 15))
                
            } else {
                
                label = UILabel(frame: CGRect(x: ow * 2, y: (oh * 10) - y - 15, width: 30, height: 15))
                
            }
            
        } else {
            
            createLine(start: CGPoint(x: tX, y: (oh * 10) - oy),
                       end: CGPoint(x: tX, y: (oh * 10) - y), width: 1, color: .green)
            
            if (tX - 15) >= ow * 2 {
                
                label = UILabel(frame: CGRect(x: tX - 15, y: (oh * 10) - y, width: 30, height: 15))
                
            } else {
                
                label = UILabel(frame: CGRect(x: ow * 2, y: (oh * 10) - y, width: 30, height: 15))
                
            }
            
        }
        
        label.text = String(format: "%.02f", hl)
        
        label.textColor = .white
        
        label.textAlignment = .center
        
        label.font = label.font.withSize(10)
        
        self.addSubview(label)
        
    }
    
}
