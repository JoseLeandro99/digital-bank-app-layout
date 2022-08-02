import UIKit

protocol CreditViewProtocol {
    func confirmAlert()
}

class CreditView: UIView, AppViewProtocol {
    private var delegate: CreditViewProtocol?
    
    lazy var screenImage = AppImage(
        name: "creditcard",
        color: .lightGray,
        mode: .scaleAspectFit)
    
    lazy var screenTitleLabel = AppLabel(
        text: "Crédito e Limites",
        color: .lightGray,
        alignment: .center,
        font: .systemFont(ofSize: 28, weight: .semibold))
    
    lazy var screenDescriptionLabel = AppLabel(
        text: "Você possui até R$ 18000 de crédito disponível",
        color: .darkGray,
        alignment: .center,
        font: .systemFont(ofSize: 18, weight: .regular))
    
    lazy var creditLimitSliderLabel = AppLabel(
        text: "R$ 5000,00",
        color: .black,
        alignment: .center,
        font: .systemFont(ofSize: 34, weight: .medium))
    
    lazy var creditLimitSlider = AppSlider(min: 100, max: 18000, value: 5000)
    
    lazy var buttonSaveLimit = AppButton(
        title: "Salvar alteração",
        color: .white,
        background: .systemTeal,
        state: .normal)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.SetupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configDelegate(delegate: CreditViewProtocol) {
        self.delegate = delegate
    }
    
    func SetupUI() {
        self.backgroundColor = AppLightTheme.lightBackground
        self.setupScreenImage()
        self.setupScreenTitleLabel()
        self.setupScreenDescription()
        self.setupCreditLimeSlider()
        self.setupButtonSaveLimt()
        self.disableSaveButton()
    }
    
    @objc func handleCreditSliderChange() {
        let value = Int(self.creditLimitSlider.value)
        self.creditLimitSliderLabel.text = "R$ \(value),00"
        self.enableSaveButton()
    }
    
    func disableSaveButton() {
        self.buttonSaveLimit.isEnabled = false
        self.buttonSaveLimit.isHidden = true
    }
    
    func enableSaveButton() {
        self.buttonSaveLimit.isEnabled = true
        self.buttonSaveLimit.isHidden = false
    }
    
    @objc func showAlertConfirmation() {
        self.disableSaveButton()
        self.delegate?.confirmAlert()
    }
}
