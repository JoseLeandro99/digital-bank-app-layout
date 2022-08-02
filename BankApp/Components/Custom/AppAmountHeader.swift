import UIKit

class AppAmountHeader: UIView {
    private var amount: Decimal = 0
    private var showAmount: Bool = false
    
    private lazy var appHeaderAmountTitleLabel = AppLabel(
        text: "Seu saldo",
        color: .darkGray,
        alignment: .left,
        font: .systemFont(ofSize: 14, weight: .light))
    
    private lazy var appHeaderAmountLabel = AppLabel(
        text: "\(self.amount)",
        color: .darkGray,
        alignment: .left,
        font: .systemFont(ofSize: 28, weight: .medium))
    
    private lazy var appHeaderShowAmountButton = AppButton(
        title: "",
        color: .white,
        background: .systemTeal,
        state: .normal)
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(amount: Decimal) {
        super.init(frame: .zero)
        
        self.setupUI()
        self.amount = amount
        self.defaultValues(amount: self.amount)
        self.toggleShowAmount()
    }
    
    private func defaultValues(amount: Decimal) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .white
        self.border(0.3, color: .lightGray)
        self.borderRadious(10)
        self.appHeaderAmountLabel.text = "\(amount)"
    }
    
    private lazy var showAmountIcon = AppImage(
        name: "eye",
        color: .white,
        mode: .scaleAspectFit)
    
    private lazy var hideAmountIcon = AppImage(
        name: "eye.slash",
        color: .white,
        mode: .scaleAspectFit)
    
    private func setupUI() {
        self.addSubview(self.appHeaderAmountLabel)
        self.addSubview(self.appHeaderAmountTitleLabel)
        self.addSubview(self.appHeaderShowAmountButton)
        
        self.appHeaderShowAmountButton.setFont(.systemFont(ofSize: 14, weight: .regular))
        self.appHeaderShowAmountButton.borderRadious(8)
        self.appHeaderShowAmountButton.setWidth(80)
        self.appHeaderShowAmountButton.setHeight(40)
        self.appHeaderShowAmountButton.setTarget(
            target: self,
            selector: #selector(handleShowAmountButtonTap),
            event: .touchUpInside)
        self.setHeight(100)
        
        self.appHeaderShowAmountButton.addSubview(self.showAmountIcon)
        self.appHeaderShowAmountButton.addSubview(self.hideAmountIcon)
        self.showAmountIcon.setWidth(30)
        self.showAmountIcon.setHeight(30)
        self.hideAmountIcon.setWidth(30)
        self.hideAmountIcon.setHeight(30)
        
        NSLayoutConstraint.activate([
            self.appHeaderAmountLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            self.appHeaderAmountLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            self.appHeaderAmountTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            self.appHeaderAmountTitleLabel.bottomAnchor.constraint(equalTo: self.appHeaderAmountLabel.topAnchor, constant: -4),
            
            self.appHeaderShowAmountButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            self.appHeaderShowAmountButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            self.showAmountIcon.centerXAnchor.constraint(equalTo: self.appHeaderShowAmountButton.centerXAnchor),
            self.showAmountIcon.centerYAnchor.constraint(equalTo: self.appHeaderShowAmountButton.centerYAnchor),
            self.hideAmountIcon.centerXAnchor.constraint(equalTo: self.appHeaderShowAmountButton.centerXAnchor),
            self.hideAmountIcon.centerYAnchor.constraint(equalTo: self.appHeaderShowAmountButton.centerYAnchor),
        ])
    }
    
    private func toggleShowAmount() {
        if showAmount {
            self.appHeaderAmountLabel.text = "R$ \(self.amount)"
            self.showAmountIcon.isHidden = true
            self.hideAmountIcon.isHidden = false
        } else {
            self.appHeaderAmountLabel.text = "*******"
            self.showAmountIcon.isHidden = false
            self.hideAmountIcon.isHidden = true
        }
    }
    
    @objc private func handleShowAmountButtonTap() {
        self.showAmount = !self.showAmount
        self.toggleShowAmount()
    }
}
