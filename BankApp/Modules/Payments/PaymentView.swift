import UIKit

protocol PaymentViewProtocol: AnyObject {
    func modalButtonAction()
}

class PaymentView: UIView, AppViewProtocol {
    private var delegate: PaymentViewProtocol?
    
    lazy var screenImage = AppImage(
        name: "qrcode.viewfinder",
        color: .lightGray,
        mode: .scaleAspectFit)
    
    lazy var screenTitleLabel = AppLabel(
        text: "Pagamentos",
        color: .lightGray,
        alignment: .center,
        font: .systemFont(ofSize: 28, weight: .semibold))
    
    lazy var screenDescriptionLabel = AppLabel(
        text: "Realize seus pagamentos através de QrCode ou Código de Barras",
        color: .darkGray,
        alignment: .center,
        font: .systemFont(ofSize: 18, weight: .regular))
    
    lazy var qrCodeButtonContainerView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemTeal
        view.borderRadious(20)
        view.border(0.4, color: .lightGray)
        return view
    }()
    
    lazy var qrCodeButtonContainerViewButton = AppButton(
        title: "Pagar com QrCode",
        color: .white,
        background: .clear,
        state: .normal)
    
    lazy var qrCodeButtonContainerViewIcon = AppImage(
        name: "qrcode.viewfinder",
        color: .white,
        mode: .scaleAspectFit)
    
    lazy var barCodeButtonContainerView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemTeal
        view.borderRadious(20)
        view.border(0.4, color: .lightGray)
        return view
    }()
    
    lazy var barCodeButtonContainerViewButton = AppButton(
        title: "Pagar com BarCode",
        color: .white,
        background: .clear,
        state: .normal)
    
    lazy var barCodeButtonContainerViewIcon = AppImage(
        name: "barcode.viewfinder",
        color: .white,
        mode: .scaleAspectFit)
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.SetupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configDelegate(delegate: PaymentViewProtocol) {
        self.delegate = delegate
    }
    
    func SetupUI() {
        self.backgroundColor = AppLightTheme.lightBackground
        self.setupScreenImage()
        self.setupScreenTitleLabel()
        self.setupScreenDescription()
        self.setupQrCodeButton()
        self.setupBarCodeButton()
    }
    
    @objc func handleButtonClick() {
        self.delegate?.modalButtonAction()
    }
}
