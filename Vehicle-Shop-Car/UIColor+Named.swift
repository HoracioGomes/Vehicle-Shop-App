//
//  UIColor+Named.swift
//  Vehicle-Shop-Car
//
//  Created by Horacio Gomes dos Santos Junior on 02/03/23.
//

import Foundation
import UIKit

extension UIColor {
    var named: String? {
        switch self {
        case UIColor.blue: return "blue"
        case UIColor.cyan: return "cyan"
        case UIColor.gray: return "gray"
        case UIColor.red: return "red"
        case UIColor.green: return "green"
        case UIColor.black: return "black"
        case UIColor.yellow: return "yellow"
        case UIColor.purple: return "purple"
        default: return nil
        }
    }
}
