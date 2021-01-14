//
//  CharacterView.swift
//  Marvel
//
//  Created by Mehmet Tarhan on 14.01.2021.
//  Copyright © 2021 memtarhan. All rights reserved.
//

import UIKit

@IBDesignable
class CharacterView: UIView {

    override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = frame.height / 10 
    }

}
