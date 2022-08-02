import UIKit

extension UIView {
    func setHeight(_ value: CGFloat) {
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: value)
        ])
    }
    
    func setWidth(_ value: CGFloat) {
        NSLayoutConstraint.activate([
            self.widthAnchor.constraint(equalToConstant: value)
        ])
    }
    
    func border(_ value: CGFloat, color: UIColor) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = value
    }
    
    func borderRadious(_ value: CGFloat) {
        self.clipsToBounds = true
        self.layer.cornerRadius = value
    }
}
