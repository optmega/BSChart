//
//  BSChartBaseCell.swift
//  BSChart
//
//  Created by ZetPlaner on 3/19/19.
//  Copyright © 2019 ZetPlaner. All rights reserved.
//

import UIKit

class BSChartBaseCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        NotificationCenter.default.addObserver(self, selector: #selector(colorModeChanged), name: .chartColorModeChanged, object: nil)
        self.colorModeChanged()
    }
    
    @objc func colorModeChanged() {
        UIView.animate(withDuration: 0.25) {
            self.backgroundColor = BSColorModeManager.shared.colorForItem(.cellBackground)
        }
    }

}
