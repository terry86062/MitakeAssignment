//
//  StockInfoProvider.swift
//  MitakeAssignment
//
//  Created by 黃偉勛 Terry on 2019/6/6.
//  Copyright © 2019 Terry. All rights reserved.
//

import Foundation

struct StockDayTickProvider {
    
    let yulonStockDayTick = YulonStockDayTick()
    
    func downloadStockDayTick() -> Result<StockDayTick, Error> {
        
        do {
            
            let root = try JSONDecoder().decode(Root.self, from: yulonStockDayTick.dayTick)
            
            return .success(root.root)
            
        } catch {
            
            return .failure(error)
            
        }
        
    }
    
}
