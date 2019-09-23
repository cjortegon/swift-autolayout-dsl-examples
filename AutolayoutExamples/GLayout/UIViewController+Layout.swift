//
//  UIViewController+Layout.swift
//  AutolayoutExamples
//
//  Created by Camilo Ortegon on 9/23/19.
//  Copyright © 2019 Camilo Ortegon. All rights reserved.
//

import UIKit
import SnapKit
import Darwin

infix operator |=|
infix operator +
infix operator -
infix operator *

@discardableResult func |=|<T: ConstraintMakerExtendable, U: ConstraintItem>(left: T, right: U) -> ConstraintMakerEditable {
    return left.equalTo(right)
}
@discardableResult func |=|<T: ConstraintMakerExtendable, U: ConstraintItemContainer>(left: T, right: U) -> ConstraintMakerEditable {
    switch right.type {
    case .multiply:
        return left.equalTo(right.item).multipliedBy(right.offset)
    case .offset:
        return left.equalTo(right.item).offset(right.offset)
    }
}
@discardableResult func |=|<T: ConstraintMakerExtendable, UInt>(constraint: T, value: UInt) -> ConstraintMakerEditable {
    return constraint.equalTo(value as! ConstraintRelatableTarget)
}
@discardableResult func +<T: ConstraintItemContainer>(constraint: T, value: Int) -> ConstraintItemContainer {
    constraint.offset = Double(value)
    return constraint
}
@discardableResult func -<T: ConstraintItemContainer>(constraint: T, value: Int) -> ConstraintItemContainer {
    constraint.offset = Double(-value)
    return constraint
}
@discardableResult func *<T: ConstraintItemContainer>(constraint: T, value: Double) -> ConstraintItemContainer {
    constraint.offset = value
    constraint.type = .multiply
    return constraint
}

enum ConstraintItemContainerType {
    case multiply
    case offset
}

class ConstraintItemContainer {
    var item : ConstraintItem
    var offset : Double
    var type : ConstraintItemContainerType = .offset
    
    init(_ item: ConstraintItem) {
        self.item = item
        self.offset = 0
    }
    init(_ item: ConstraintItem, offset: Double, type: ConstraintItemContainerType) {
        self.item = item
        self.offset = offset
        self.type = type
    }
}

extension UILayoutSupport {
    var s_top: ConstraintItemContainer {
        get {
            return ConstraintItemContainer(self.snp.top)
        }
    }
    var s_bottom: ConstraintItemContainer {
        get {
            return ConstraintItemContainer(self.snp.bottom)
        }
    }
}

extension ConstraintView {
    var s_top: ConstraintItemContainer {
        get {
            return ConstraintItemContainer(self.snp.top)
        }
    }
    var s_bottom: ConstraintItemContainer {
        get {
            return ConstraintItemContainer(self.snp.bottom)
        }
    }
    var s_left: ConstraintItemContainer {
        get {
            return ConstraintItemContainer(self.snp.left)
        }
    }
    var s_right: ConstraintItemContainer {
        get {
            return ConstraintItemContainer(self.snp.right)
        }
    }
    var s_width: ConstraintItemContainer {
        get {
            return ConstraintItemContainer(self.snp.width)
        }
    }
    var s_height: ConstraintItemContainer {
        get {
            return ConstraintItemContainer(self.snp.height)
        }
    }
    var s_center: ConstraintItemContainer {
        get {
            return ConstraintItemContainer(self.snp.center)
        }
    }
}
