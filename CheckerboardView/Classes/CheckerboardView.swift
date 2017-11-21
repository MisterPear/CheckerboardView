//
//  CheckerboardView.swift
//  CheckerboardView
//
//  Created by Patryk Gruszka on 21/03/2017.
//  Copyright © 2017 Patryk Gruszka. All rights reserved.
//

import UIKit

@IBDesignable public class CheckerboardView: UIView {
    
    // MARK: Inspectable
    
    @IBInspectable public var lines: Int = 1 {
        didSet {
            if lines < 1 {
                lines = 1
            }
            
            self.setup()
        }
    }
    
    @IBInspectable public var columns: Int = 1 {
        didSet {
            if columns < 1 {
                columns = 1
            }
            
            self.setup()
        }
    }
    
    @IBInspectable public var firstColor: UIColor = .white {
        didSet {
            for layer in firstBoxes {
                layer.backgroundColor = firstColor.cgColor
            }
        }
    }
    
    @IBInspectable public var secondColor: UIColor = .black {
        didSet {
            for layer in secondBoxes {
                layer.backgroundColor = secondColor.cgColor
            }
        }
    }
    
    // MARK: Properties
    
    var firstBoxes: [CALayer] = []
    var secondBoxes: [CALayer] = []
    
    // MARK: Init
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience public init(frame: CGRect, lines: Int, columns: Int, firstColor: UIColor = .white, secondColor: UIColor = .black) {
        self.init(frame: frame)
        
        self.lines = lines
        self.columns = columns
        
        self.firstColor = firstColor
        self.secondColor = secondColor
        
        self.setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.setup()
    }
    
    // MARK: Override
    
    override public func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        self.setup()
    }

    override public func layoutSubviews() {
        super.layoutSubviews()
        
        self.setup()
    }
    
    // MARK: - Private methods
    
    private func setup() {
        layer.masksToBounds = true
        
        for firstBox in firstBoxes {
            firstBox.removeFromSuperlayer()
        }
        
        for secondBox in secondBoxes {
            secondBox.removeFromSuperlayer()
        }
        
        let boxWidth = frame.size.width / CGFloat(columns)
        let boxHeight = frame.size.height / CGFloat(lines)
        
        for i in 0..<lines {
            for j in 0..<columns {
                
                let boxLayer: CALayer = CALayer()
                boxLayer.frame = CGRect(x: CGFloat(j) * boxWidth, y: CGFloat(i) * boxHeight, width: boxWidth, height: boxHeight)
                
                if (i + j) % 2 == 0 {
                    boxLayer.backgroundColor = firstColor.cgColor
                    firstBoxes.append(boxLayer)
                } else {
                    boxLayer.backgroundColor = secondColor.cgColor
                    secondBoxes.append(boxLayer)
                }
                
                layer.insertSublayer(boxLayer, at: 0)
            }
        }
        
    }
    
    // MARK: - Public methods
    
    public func randomColor() {
        firstColor = .random
        secondColor = .random
    }
    
    public func randomFirstColor() {
        firstColor = .random
    }
    
    public func randomSecondColor() {
        secondColor = .random
    }
    
}
