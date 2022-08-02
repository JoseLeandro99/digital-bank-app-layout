import UIKit

class AppImage: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(name: String, color: UIColor, mode: ContentMode) {
        super.init(frame: .zero)
        self.defaultValues(name: name, color: color, mode: mode)
    }
    
    private func defaultValues(name: String, color: UIColor, mode: ContentMode) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.image = UIImage(systemName: name)
        self.contentMode = mode
        self.tintColor = color
    }
}
