//
//  StockInfoProvider.swift
//  MitakeAssignment
//
//  Created by 黃偉勛 Terry on 2019/6/6.
//  Copyright © 2019 Terry. All rights reserved.
//

import Foundation

struct StockInfoProvider {
    
    var info = """
    {
        "root": {
            "rc":"000",
            "cnts":"266",
            "stk":"2201",
            "c":"23.10",
            "tp":"25.40",
            "bp":"20.80",
            "v":"1",
            "tt":"09001330",
            "st":"201906050900",
            "tick":[
                {"t":"1","o":"23.70","h":"23.75","l":"23.50","c":"23.50","v":"805"},
                {"t":"2","o":"23.50","h":"23.50","l":"23.50","c":"23.50","v":"146"},
                {"t":"3","o":"23.50","h":"23.55","l":"23.50","c":"23.50","v":"79"},
                {"t":"4","o":"23.50","h":"23.60","l":"23.50","c":"23.60","v":"52"},
                {"t":"5","o":"23.60","h":"23.70","l":"23.60","c":"23.65","v":"148"},
                {"t":"6","o":"23.70","h":"23.70","l":"23.60","c":"23.60","v":"81"},
                {"t":"7","o":"23.60","h":"23.60","l":"23.55","c":"23.60","v":"62"},
                {"t":"8","o":"23.55","h":"23.55","l":"23.50","c":"23.50","v":"105"},
                {"t":"9","o":"23.50","h":"23.50","l":"23.40","c":"23.40","v":"130"},
                {"t":"10","o":"23.40","h":"23.50","l":"23.40","c":"23.45","v":"26"},
                {"t":"11","o":"23.45","h":"23.45","l":"23.40","c":"23.45","v":"57"},
                {"t":"12","o":"23.45","h":"23.50","l":"23.40","c":"23.40","v":"46"},
                {"t":"13","o":"23.45","h":"23.50","l":"23.40","c":"23.40","v":"37"},
                {"t":"14","o":"23.50","h":"23.50","l":"23.45","c":"23.45","v":"30"},
                {"t":"15","o":"23.45","h":"23.45","l":"23.45","c":"23.45","v":"46"},
                {"t":"16","o":"23.45","h":"23.45","l":"23.40","c":"23.40","v":"62"},
                {"t":"17","o":"23.45","h":"23.45","l":"23.40","c":"23.45","v":"40"},
                {"t":"18","o":"23.45","h":"23.45","l":"23.45","c":"23.45","v":"12"},
                {"t":"19","o":"23.45","h":"23.45","l":"23.40","c":"23.40","v":"50"},
                {"t":"20","o":"23.45","h":"23.45","l":"23.40","c":"23.40","v":"24"},
                {"t":"21","o":"23.40","h":"23.45","l":"23.40","c":"23.40","v":"34"},
                {"t":"22","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"109"},
                {"t":"23","o":"23.35","h":"23.40","l":"23.35","c":"23.35","v":"40"},
                {"t":"24","o":"23.40","h":"23.40","l":"23.35","c":"23.40","v":"61"},
                {"t":"25","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"16"},
                {"t":"26","o":"23.40","h":"23.40","l":"23.35","c":"23.35","v":"56"},
                {"t":"27","o":"23.40","h":"23.45","l":"23.35","c":"23.45","v":"42"},
                {"t":"28","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"12"},
                {"t":"29","o":"23.40","h":"23.45","l":"23.40","c":"23.40","v":"29"},
                {"t":"30","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"31"},
                {"t":"31","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"41"},
                {"t":"32","o":"23.40","h":"23.45","l":"23.35","c":"23.40","v":"30"},
                {"t":"33","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"31"},
                {"t":"34","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"8"},
                {"t":"35","o":"23.40","h":"23.45","l":"23.40","c":"23.40","v":"40"},
                {"t":"36","o":"23.45","h":"23.45","l":"23.40","c":"23.45","v":"84"},
                {"t":"37","o":"23.45","h":"23.45","l":"23.40","c":"23.40","v":"23"},
                {"t":"38","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"11"},
                {"t":"39","o":"23.40","h":"23.50","l":"23.40","c":"23.45","v":"301"},
                {"t":"40","o":"23.45","h":"23.55","l":"23.45","c":"23.55","v":"110"},
                {"t":"41","o":"23.55","h":"23.60","l":"23.55","c":"23.55","v":"155"},
                {"t":"42","o":"23.55","h":"23.60","l":"23.55","c":"23.55","v":"106"},
                {"t":"43","o":"23.55","h":"23.60","l":"23.55","c":"23.55","v":"79"},
                {"t":"44","o":"23.55","h":"23.55","l":"23.50","c":"23.50","v":"69"},
                {"t":"45","o":"23.55","h":"23.55","l":"23.50","c":"23.50","v":"22"},
                {"t":"46","o":"23.50","h":"23.55","l":"23.50","c":"23.50","v":"28"},
                {"t":"47","o":"23.50","h":"23.55","l":"23.50","c":"23.50","v":"41"},
                {"t":"48","o":"23.50","h":"23.55","l":"23.50","c":"23.50","v":"34"},
                {"t":"49","o":"23.50","h":"23.50","l":"23.50","c":"23.50","v":"27"},
                {"t":"50","o":"23.50","h":"23.55","l":"23.50","c":"23.55","v":"98"},
                {"t":"51","o":"23.55","h":"23.55","l":"23.55","c":"23.55","v":"32"},
                {"t":"52","o":"23.50","h":"23.55","l":"23.50","c":"23.50","v":"24"},
                {"t":"53","o":"23.50","h":"23.55","l":"23.45","c":"23.45","v":"90"},
                {"t":"54","o":"23.50","h":"23.50","l":"23.45","c":"23.45","v":"11"},
                {"t":"55","o":"23.45","h":"23.45","l":"23.45","c":"23.45","v":"15"},
                {"t":"56","o":"23.45","h":"23.45","l":"23.40","c":"23.40","v":"76"},
                {"t":"57","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"10"},
                {"t":"58","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"9"},
                {"t":"59","o":"23.40","h":"23.45","l":"23.40","c":"23.40","v":"29"},
                {"t":"60","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"38"},
                {"t":"61","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"11"},
                {"t":"62","o":"23.40","h":"23.45","l":"23.40","c":"23.40","v":"17"},
                {"t":"63","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"9"},
                {"t":"64","o":"23.40","h":"23.45","l":"23.40","c":"23.45","v":"14"},
                {"t":"65","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"12"},
                {"t":"66","o":"23.40","h":"23.45","l":"23.40","c":"23.45","v":"14"},
                {"t":"67","o":"23.45","h":"23.45","l":"23.40","c":"23.40","v":"12"},
                {"t":"68","o":"23.40","h":"23.45","l":"23.40","c":"23.40","v":"16"},
                {"t":"69","o":"23.40","h":"23.50","l":"23.40","c":"23.40","v":"89"},
                {"t":"70","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"11"},
                {"t":"71","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"14"},
                {"t":"72","o":"23.40","h":"23.45","l":"23.40","c":"23.45","v":"19"},
                {"t":"73","o":"23.45","h":"23.45","l":"23.40","c":"23.45","v":"31"},
                {"t":"74","o":"23.45","h":"23.45","l":"23.40","c":"23.45","v":"21"},
                {"t":"75","o":"23.40","h":"23.45","l":"23.40","c":"23.40","v":"15"},
                {"t":"76","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"13"},
                {"t":"77","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"112"},
                {"t":"78","o":"23.35","h":"23.40","l":"23.35","c":"23.35","v":"38"},
                {"t":"79","o":"23.35","h":"23.40","l":"23.35","c":"23.35","v":"21"},
                {"t":"80","o":"23.40","h":"23.40","l":"23.35","c":"23.35","v":"18"},
                {"t":"81","o":"23.40","h":"23.40","l":"23.35","c":"23.35","v":"12"},
                {"t":"82","o":"23.35","h":"23.40","l":"23.35","c":"23.35","v":"21"},
                {"t":"83","o":"23.35","h":"23.35","l":"23.35","c":"23.35","v":"12"},
                {"t":"84","o":"23.35","h":"23.35","l":"23.35","c":"23.35","v":"17"},
                {"t":"85","o":"23.35","h":"23.40","l":"23.35","c":"23.35","v":"14"},
                {"t":"86","o":"23.35","h":"23.40","l":"23.35","c":"23.35","v":"28"},
                {"t":"87","o":"23.35","h":"23.40","l":"23.35","c":"23.35","v":"15"},
                {"t":"88","o":"23.35","h":"23.40","l":"23.35","c":"23.35","v":"55"},
                {"t":"89","o":"23.35","h":"23.40","l":"23.35","c":"23.35","v":"12"},
                {"t":"90","o":"23.35","h":"23.40","l":"23.35","c":"23.35","v":"46"},
                {"t":"91","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"72"},
                {"t":"92","o":"23.40","h":"23.45","l":"23.40","c":"23.40","v":"15"},
                {"t":"93","o":"23.40","h":"23.45","l":"23.40","c":"23.40","v":"16"},
                {"t":"94","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"9"},
                {"t":"95","o":"23.40","h":"23.40","l":"23.40","c":"23.40","v":"10"},
                {"t":"96","o":"23.40","h":"23.40","l":"23.35","c":"23.35","v":"43"},
                {"t":"97","o":"23.35","h":"23.35","l":"23.35","c":"23.35","v":"11"},
                {"t":"98","o":"23.35","h":"23.35","l":"23.35","c":"23.35","v":"9"},
                {"t":"99","o":"23.35","h":"23.35","l":"23.35","c":"23.35","v":"10"},
                {"t":"100","o":"23.35","h":"23.35","l":"23.35","c":"23.35","v":"9"},
                {"t":"101","o":"23.35","h":"23.35","l":"23.35","c":"23.35","v":"10"},
                {"t":"102","o":"23.35","h":"23.35","l":"23.35","c":"23.35","v":"22"},
                {"t":"103","o":"23.35","h":"23.40","l":"23.35","c":"23.35","v":"18"},
                {"t":"104","o":"23.35","h":"23.35","l":"23.35","c":"23.35","v":"119"},
                {"t":"105","o":"23.35","h":"23.35","l":"23.30","c":"23.30","v":"83"},
                {"t":"106","o":"23.30","h":"23.30","l":"23.30","c":"23.30","v":"22"},
                {"t":"107","o":"23.30","h":"23.30","l":"23.30","c":"23.30","v":"24"},
                {"t":"108","o":"23.30","h":"23.35","l":"23.30","c":"23.35","v":"62"},
                {"t":"109","o":"23.30","h":"23.35","l":"23.30","c":"23.35","v":"90"},
                {"t":"110","o":"23.35","h":"23.35","l":"23.35","c":"23.35","v":"19"},
                {"t":"111","o":"23.35","h":"23.40","l":"23.30","c":"23.30","v":"20"},
                {"t":"112","o":"23.30","h":"23.30","l":"23.30","c":"23.30","v":"31"},
                {"t":"113","o":"23.30","h":"23.30","l":"23.30","c":"23.30","v":"12"},
                {"t":"114","o":"23.30","h":"23.35","l":"23.30","c":"23.30","v":"70"},
                {"t":"115","o":"23.30","h":"23.30","l":"23.30","c":"23.30","v":"24"},
                {"t":"116","o":"23.30","h":"23.35","l":"23.30","c":"23.30","v":"87"},
                {"t":"117","o":"23.30","h":"23.35","l":"23.30","c":"23.30","v":"80"},
                {"t":"118","o":"23.30","h":"23.30","l":"23.30","c":"23.30","v":"88"},
                {"t":"119","o":"23.30","h":"23.30","l":"23.25","c":"23.25","v":"73"},
                {"t":"120","o":"23.25","h":"23.30","l":"23.25","c":"23.30","v":"28"},
                {"t":"121","o":"23.30","h":"23.35","l":"23.30","c":"23.30","v":"24"},
                {"t":"122","o":"23.30","h":"23.30","l":"23.30","c":"23.30","v":"12"},
                {"t":"123","o":"23.30","h":"23.30","l":"23.30","c":"23.30","v":"57"},
                {"t":"124","o":"23.25","h":"23.30","l":"23.25","c":"23.30","v":"11"},
                {"t":"125","o":"23.30","h":"23.30","l":"23.25","c":"23.25","v":"20"},
                {"t":"126","o":"23.25","h":"23.30","l":"23.25","c":"23.25","v":"12"},
                {"t":"127","o":"23.25","h":"23.25","l":"23.25","c":"23.25","v":"11"},
                {"t":"128","o":"23.25","h":"23.25","l":"23.25","c":"23.25","v":"13"},
                {"t":"129","o":"23.25","h":"23.30","l":"23.25","c":"23.25","v":"19"},
                {"t":"130","o":"23.25","h":"23.30","l":"23.25","c":"23.25","v":"18"},
                {"t":"131","o":"23.25","h":"23.30","l":"23.25","c":"23.30","v":"25"},
                {"t":"132","o":"23.30","h":"23.30","l":"23.30","c":"23.30","v":"11"},
                {"t":"133","o":"23.30","h":"23.30","l":"23.30","c":"23.30","v":"9"},
                {"t":"134","o":"23.30","h":"23.30","l":"23.25","c":"23.25","v":"16"},
                {"t":"135","o":"23.25","h":"23.25","l":"23.25","c":"23.25","v":"11"},
                {"t":"136","o":"23.25","h":"23.25","l":"23.25","c":"23.25","v":"10"},
                {"t":"137","o":"23.25","h":"23.25","l":"23.25","c":"23.25","v":"12"},
                {"t":"138","o":"23.25","h":"23.25","l":"23.20","c":"23.20","v":"92"},
                {"t":"139","o":"23.20","h":"23.20","l":"23.15","c":"23.15","v":"149"},
                {"t":"140","o":"23.15","h":"23.15","l":"23.05","c":"23.10","v":"326"},
                {"t":"141","o":"23.10","h":"23.10","l":"23.10","c":"23.10","v":"52"},
                {"t":"142","o":"23.10","h":"23.15","l":"23.10","c":"23.15","v":"54"},
                {"t":"143","o":"23.20","h":"23.20","l":"23.15","c":"23.15","v":"12"},
                {"t":"144","o":"23.15","h":"23.15","l":"23.10","c":"23.10","v":"30"},
                {"t":"145","o":"23.10","h":"23.10","l":"23.10","c":"23.10","v":"112"},
                {"t":"146","o":"23.10","h":"23.10","l":"23.05","c":"23.05","v":"290"},
                {"t":"147","o":"23.05","h":"23.05","l":"23.00","c":"23.00","v":"416"},
                {"t":"148","o":"22.95","h":"22.95","l":"22.90","c":"22.95","v":"295"},
                {"t":"149","o":"22.95","h":"23.00","l":"22.95","c":"23.00","v":"96"},
                {"t":"150","o":"23.00","h":"23.00","l":"23.00","c":"23.00","v":"102"},
                {"t":"151","o":"23.00","h":"23.00","l":"23.00","c":"23.00","v":"152"},
                {"t":"152","o":"23.00","h":"23.05","l":"23.00","c":"23.00","v":"89"},
                {"t":"153","o":"23.00","h":"23.00","l":"22.95","c":"23.00","v":"18"},
                {"t":"154","o":"23.00","h":"23.00","l":"23.00","c":"23.00","v":"37"},
                {"t":"155","o":"23.00","h":"23.00","l":"23.00","c":"23.00","v":"13"},
                {"t":"156","o":"23.00","h":"23.00","l":"22.95","c":"23.00","v":"129"},
                {"t":"157","o":"23.00","h":"23.00","l":"23.00","c":"23.00","v":"24"},
                {"t":"158","o":"23.00","h":"23.00","l":"23.00","c":"23.00","v":"28"},
                {"t":"159","o":"23.00","h":"23.05","l":"23.00","c":"23.00","v":"16"},
                {"t":"160","o":"23.05","h":"23.05","l":"23.00","c":"23.00","v":"33"},
                {"t":"161","o":"23.00","h":"23.00","l":"23.00","c":"23.00","v":"19"},
                {"t":"162","o":"23.00","h":"23.00","l":"23.00","c":"23.00","v":"10"},
                {"t":"163","o":"23.00","h":"23.05","l":"23.00","c":"23.05","v":"42"},
                {"t":"164","o":"23.00","h":"23.05","l":"23.00","c":"23.05","v":"8"},
                {"t":"165","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"29"},
                {"t":"166","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"9"},
                {"t":"167","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"6"},
                {"t":"168","o":"23.05","h":"23.10","l":"23.05","c":"23.05","v":"19"},
                {"t":"169","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"10"},
                {"t":"170","o":"23.10","h":"23.10","l":"23.05","c":"23.05","v":"33"},
                {"t":"171","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"11"},
                {"t":"172","o":"23.05","h":"23.10","l":"23.05","c":"23.10","v":"130"},
                {"t":"173","o":"23.10","h":"23.15","l":"23.10","c":"23.15","v":"19"},
                {"t":"174","o":"23.15","h":"23.15","l":"23.15","c":"23.15","v":"11"},
                {"t":"175","o":"23.20","h":"23.20","l":"23.15","c":"23.15","v":"14"},
                {"t":"176","o":"23.15","h":"23.15","l":"23.15","c":"23.15","v":"18"},
                {"t":"177","o":"23.15","h":"23.15","l":"23.15","c":"23.15","v":"42"},
                {"t":"178","o":"23.15","h":"23.15","l":"23.10","c":"23.10","v":"21"},
                {"t":"179","o":"23.10","h":"23.10","l":"23.10","c":"23.10","v":"9"},
                {"t":"180","o":"23.10","h":"23.15","l":"23.10","c":"23.10","v":"20"},
                {"t":"181","o":"23.10","h":"23.10","l":"23.10","c":"23.10","v":"10"},
                {"t":"182","o":"23.10","h":"23.10","l":"23.05","c":"23.10","v":"16"},
                {"t":"183","o":"23.10","h":"23.10","l":"23.05","c":"23.10","v":"20"},
                {"t":"184","o":"23.10","h":"23.10","l":"23.05","c":"23.05","v":"112"},
                {"t":"185","o":"23.05","h":"23.10","l":"23.05","c":"23.05","v":"40"},
                {"t":"186","o":"23.10","h":"23.10","l":"23.05","c":"23.05","v":"37"},
                {"t":"187","o":"23.05","h":"23.10","l":"23.05","c":"23.05","v":"36"},
                {"t":"188","o":"23.05","h":"23.15","l":"23.05","c":"23.10","v":"21"},
                {"t":"189","o":"23.10","h":"23.15","l":"23.10","c":"23.10","v":"31"},
                {"t":"190","o":"23.10","h":"23.10","l":"23.05","c":"23.10","v":"32"},
                {"t":"191","o":"23.05","h":"23.10","l":"23.05","c":"23.05","v":"10"},
                {"t":"192","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"7"},
                {"t":"193","o":"23.05","h":"23.10","l":"23.05","c":"23.05","v":"11"},
                {"t":"194","o":"23.05","h":"23.05","l":"23.00","c":"23.05","v":"71"},
                {"t":"195","o":"23.00","h":"23.05","l":"23.00","c":"23.00","v":"17"},
                {"t":"196","o":"23.00","h":"23.05","l":"23.00","c":"23.05","v":"23"},
                {"t":"197","o":"23.05","h":"23.10","l":"23.05","c":"23.05","v":"12"},
                {"t":"198","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"9"},
                {"t":"199","o":"23.05","h":"23.10","l":"23.05","c":"23.05","v":"8"},
                {"t":"200","o":"23.05","h":"23.10","l":"23.05","c":"23.05","v":"12"},
                {"t":"201","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"10"},
                {"t":"202","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"5"},
                {"t":"203","o":"23.05","h":"23.10","l":"23.05","c":"23.05","v":"24"},
                {"t":"204","o":"23.05","h":"23.10","l":"23.05","c":"23.05","v":"11"},
                {"t":"205","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"6"},
                {"t":"206","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"5"},
                {"t":"207","o":"23.05","h":"23.10","l":"23.05","c":"23.10","v":"40"},
                {"t":"208","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"13"},
                {"t":"209","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"15"},
                {"t":"210","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"14"},
                {"t":"211","o":"23.05","h":"23.05","l":"23.00","c":"23.00","v":"101"},
                {"t":"212","o":"23.00","h":"23.05","l":"23.00","c":"23.05","v":"20"},
                {"t":"213","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"24"},
                {"t":"214","o":"23.05","h":"23.05","l":"23.00","c":"23.05","v":"27"},
                {"t":"215","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"14"},
                {"t":"216","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"20"},
                {"t":"217","o":"23.00","h":"23.05","l":"23.00","c":"23.05","v":"34"},
                {"t":"218","o":"23.05","h":"23.05","l":"23.00","c":"23.05","v":"92"},
                {"t":"219","o":"23.05","h":"23.05","l":"23.00","c":"23.00","v":"69"},
                {"t":"220","o":"23.05","h":"23.05","l":"23.00","c":"23.00","v":"13"},
                {"t":"221","o":"23.00","h":"23.00","l":"23.00","c":"23.00","v":"16"},
                {"t":"222","o":"23.00","h":"23.05","l":"23.00","c":"23.00","v":"262"},
                {"t":"223","o":"23.00","h":"23.00","l":"22.95","c":"23.00","v":"54"},
                {"t":"224","o":"23.00","h":"23.05","l":"23.00","c":"23.00","v":"15"},
                {"t":"225","o":"23.00","h":"23.00","l":"23.00","c":"23.00","v":"15"},
                {"t":"226","o":"23.00","h":"23.05","l":"23.00","c":"23.00","v":"11"},
                {"t":"227","o":"23.00","h":"23.00","l":"23.00","c":"23.00","v":"58"},
                {"t":"228","o":"23.00","h":"23.05","l":"23.00","c":"23.00","v":"7"},
                {"t":"229","o":"23.00","h":"23.05","l":"23.00","c":"23.05","v":"74"},
                {"t":"230","o":"23.05","h":"23.10","l":"23.05","c":"23.10","v":"21"},
                {"t":"231","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"10"},
                {"t":"232","o":"23.05","h":"23.05","l":"23.00","c":"23.05","v":"42"},
                {"t":"233","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"8"},
                {"t":"234","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"6"},
                {"t":"235","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"10"},
                {"t":"236","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"11"},
                {"t":"237","o":"23.05","h":"23.05","l":"23.05","c":"23.05","v":"23"},
                {"t":"238","o":"23.05","h":"23.05","l":"23.00","c":"23.05","v":"22"},
                {"t":"239","o":"23.05","h":"23.10","l":"23.05","c":"23.10","v":"159"},
                {"t":"240","o":"23.10","h":"23.15","l":"23.10","c":"23.15","v":"21"},
                {"t":"241","o":"23.20","h":"23.20","l":"23.15","c":"23.15","v":"14"},
                {"t":"242","o":"23.15","h":"23.20","l":"23.15","c":"23.15","v":"54"},
                {"t":"243","o":"23.10","h":"23.15","l":"23.10","c":"23.10","v":"12"},
                {"t":"244","o":"23.10","h":"23.15","l":"23.10","c":"23.15","v":"32"},
                {"t":"245","o":"23.15","h":"23.15","l":"23.10","c":"23.10","v":"42"},
                {"t":"246","o":"23.10","h":"23.15","l":"23.10","c":"23.15","v":"53"},
                {"t":"247","o":"23.15","h":"23.15","l":"23.15","c":"23.15","v":"11"},
                {"t":"248","o":"23.15","h":"23.15","l":"23.15","c":"23.15","v":"21"},
                {"t":"249","o":"23.15","h":"23.20","l":"23.15","c":"23.15","v":"10"},
                {"t":"250","o":"23.15","h":"23.15","l":"23.15","c":"23.15","v":"43"},
                {"t":"251","o":"23.15","h":"23.20","l":"23.15","c":"23.15","v":"11"},
                {"t":"252","o":"23.15","h":"23.25","l":"23.15","c":"23.25","v":"63"},
                {"t":"253","o":"23.20","h":"23.25","l":"23.20","c":"23.20","v":"28"},
                {"t":"254","o":"23.20","h":"23.20","l":"23.20","c":"23.20","v":"59"},
                {"t":"255","o":"23.20","h":"23.25","l":"23.15","c":"23.20","v":"32"},
                {"t":"256","o":"23.15","h":"23.15","l":"23.15","c":"23.15","v":"12"},
                {"t":"257","o":"23.15","h":"23.15","l":"23.15","c":"23.15","v":"64"},
                {"t":"258","o":"23.20","h":"23.20","l":"23.15","c":"23.20","v":"15"},
                {"t":"259","o":"23.15","h":"23.15","l":"23.10","c":"23.10","v":"38"},
                {"t":"260","o":"23.15","h":"23.15","l":"23.10","c":"23.10","v":"78"},
                {"t":"261","o":"23.10","h":"23.15","l":"23.10","c":"23.15","v":"7"},
                {"t":"262","o":"23.15","h":"23.15","l":"23.15","c":"23.15","v":"15"},
                {"t":"263","o":"23.15","h":"23.15","l":"23.15","c":"23.15","v":"72"},
                {"t":"264","o":"23.15","h":"23.15","l":"23.10","c":"23.10","v":"16"},
                {"t":"265","o":"23.15","h":"23.15","l":"23.10","c":"23.10","v":"29"},
                {"t":"270","o":"23.20","h":"23.20","l":"23.20","c":"23.20","v":"507"}
            ]
        }
    }
    """.data(using: .utf8)!
    
    func downloadStockInfo() -> Result<StockDayTick, Error> {
        
        do {
            
            let root = try JSONDecoder().decode(Root.self, from: info)
            
            return .success(root.root)
            
        } catch {
            
            return .failure(error)
            
        }
        
    }
    
}