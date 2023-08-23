import UIKit

@IBDesignable
class TransparentView: UIView {
    // Expose corner radius property for design adjustments
    @IBInspectable var cornerRadius: CGFloat = 10 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    
    // Expose border width property for design adjustments
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    // Expose border color property for design adjustments
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    // Expose background color opacity property for design adjustments
    @IBInspectable var backgroundColorOpacity: CGFloat = 0.1 {
        didSet {
            backgroundColor = backgroundColor?.withAlphaComponent(backgroundColorOpacity)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    func setupView() {
        // Set a clear background color with opacity
        backgroundColor = backgroundColor?.withAlphaComponent(backgroundColorOpacity)
        
        // Set the corner radius
        layer.cornerRadius = cornerRadius
        
        // Set the border width
        layer.borderWidth = borderWidth
        
        // Set the border color
        layer.borderColor = borderColor.cgColor
    }
}


