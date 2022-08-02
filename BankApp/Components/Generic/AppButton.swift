import UIKit

class AppButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(title: String, color: UIColor, background: UIColor, state: State) {
        super.init(frame: .zero)
        self.defaultValues(title: title, color: color, background: background, state: state)
    }
    
    private func defaultValues(title: String, color: UIColor, background: UIColor, state: State) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitle(title, for: state)
        self.setTitleColor(color, for: state)
        self.backgroundColor = background
    }
    
    func setFont(_ font: UIFont) {
        self.titleLabel?.font = font
    }
    
    func setTarget(target: Any?, selector: Selector, event: Event) {
        self.addTarget(target, action: selector, for: event)
    }
}
