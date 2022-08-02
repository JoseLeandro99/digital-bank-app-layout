import UIKit

class AppSlider: UISlider {
    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(min: Float, max: Float, value: Float) {
        super.init(frame: .zero)
        self.defaultValues(min: min, max: max, value: value)
    }
    
    private func defaultValues(min: Float, max: Float, value: Float) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.maximumTrackTintColor = .lightGray
        self.minimumTrackTintColor = .systemTeal
        self.minimumValue = min
        self.maximumValue = max
        self.value = value
    }
}
