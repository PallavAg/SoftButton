//
//  SoftButton.swift
//  SoftButton
//
//  Created by Pallav Agarwal on 7/19/21.
//

import UIKit

public class SoftButton: UIButton {
    
    public var bevel = 3 // Button 'pop-out' effect amount
    
    override open var isHighlighted: Bool {
        didSet { isHighlighted ? pressed() : released() }
    }
    
    override open var isEnabled: Bool {
        didSet{ isHighlighted ? released() : pressed() }
    }
    
    func pressed() {
        self.layer.shadowOffset = CGSize(width: -2, height: -2)
        self.layer.sublayers?[0].shadowOffset = CGSize(width: 2, height: 2)
        self.contentEdgeInsets = UIEdgeInsets(top: 2, left: 2, bottom: 0, right: 0)
    }
    
    func released() {
        self.layer.shadowOffset = CGSize(width: bevel, height: bevel)
        self.layer.sublayers?[0].shadowOffset = CGSize(width: -bevel, height: -bevel)
        self.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 2, right: 2)
    }
    
    public func makeNeuromorphic(cornerRadius: CGFloat = 20.0, superView: UIView? = nil) {
        
        let colorLight = UIColor(red: 227/255, green: 230/255, blue: 234/255, alpha: 1.0)
        let colorDark = UIColor(red: 26/255, green: 26/255, blue: 26/255, alpha: 1.0)
        
        let darkShadow = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0).cgColor
        let lightShadow = UIColor(red: 209/255, green: 217/255, blue: 230/255, alpha: 1.0).cgColor
        
        if (self.layer.sublayers?[0] as? CAShapeLayer) != nil {
            self.layer.sublayers?.remove(at: 0)
        }
        
        self.tintColor = .label
        
        let shadowLayer = CAShapeLayer()
        
        self.layer.cornerRadius = cornerRadius
        self.layer.cornerCurve = .continuous
        shadowLayer.cornerRadius = cornerRadius
        shadowLayer.cornerCurve = .continuous
        
        self.layer.shadowRadius = 2
        shadowLayer.shadowRadius = 2
        
        self.layer.shadowOpacity = 1
        shadowLayer.shadowOpacity = 1
        
        self.layer.shadowOffset = CGSize(width: bevel, height: bevel)
        shadowLayer.shadowOffset = CGSize(width: -bevel, height: -bevel)
        
        var activeColor = colorLight
        if traitCollection.userInterfaceStyle == .dark {
            activeColor = colorDark
            self.layer.shadowColor = UIColor.black.cgColor
            shadowLayer.shadowColor = darkShadow
        } else {
            self.layer.shadowColor = lightShadow
            shadowLayer.shadowColor = UIColor.white.cgColor
        }
        
        self.layer.masksToBounds = false
        shadowLayer.frame = bounds
        self.layer.backgroundColor = activeColor.cgColor
        shadowLayer.backgroundColor = activeColor.cgColor
        
        if superView != nil {
            superview?.backgroundColor = activeColor
        }
        
        self.layer.insertSublayer(shadowLayer, at: 0)
        
    }
    
}

