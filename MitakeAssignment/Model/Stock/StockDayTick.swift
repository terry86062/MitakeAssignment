//
//  StockInfo.swift
//  MitakeAssignment
//
//  Created by 黃偉勛 Terry on 2019/6/6.
//  Copyright © 2019 Terry. All rights reserved.
//

import Foundation

struct Root: Codable {
    
    let root: StockDayTick
    
}

struct StockDayTick: Codable {
    
    let rc: String
    
    let cnts: String
    
    let stk: String
    
    let c: String
    
    let tp: String
    
    let bp: String
    
    let v: String
    
    let tt: String
    
    let st: String
    
    let tick: [Tick]
    
}

struct Tick: Codable {
    
    let t: String
    
    let o: String
    
    let h: String
    
    let l: String
    
    let c: String
    
    let v: String
    
}
