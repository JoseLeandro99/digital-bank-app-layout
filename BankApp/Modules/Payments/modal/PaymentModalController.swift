import UIKit

class PaymentModalController: UIViewController {
    private var screen: PaymentModalView?
    
    override func loadView() {
        self.screen = PaymentModalView()
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
}

class PaymentModalView: UIView {
    private lazy var modalTitle = AppLabel(
        text: "Pagamento Confirmado",
        color: .black,
        alignment: .center,
        font: .systemFont(ofSize: 28, weight: .medium))
    
    private lazy var modalIcon = AppImage(
        name: "checkmark.circle",
        color: .systemGreen,
        mode: .scaleAspectFit)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.SetupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func SetupUI() {
        self.addSubview(self.modalTitle)
        self.addSubview(self.modalIcon)
        
        self.modalIcon.setWidth(220)
        self.modalIcon.setHeight(220)
        
        NSLayoutConstraint.activate([
            self.modalTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            self.modalTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.modalTitle.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            self.modalIcon.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.modalIcon.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
