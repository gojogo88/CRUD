//
//  BlackBgButton.swift
//  CRUD
//
//  Created by Jonathan Go on 2019/06/12.
//  Copyright © 2019 Appdelight. All rights reserved.
//

import UIKit

class BlackBgButton: UIButton {
  override func awakeFromNib() {
    layer.backgroundColor = BLACK_BG
    layer.cornerRadius = 10
}
