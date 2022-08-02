import UIKit

class HomeView: UIView, AppViewProtocol {
    lazy var usernameLabel = AppLabel(
        text: "Bem vindo, Desenvolvedor",
        color: .darkGray,
        alignment: .center,
        font: .systemFont(ofSize: 20, weight: .regular))
    
    lazy var AppHeader = AppAmountHeader(amount: 39516.43)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.SetupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func SetupUI() {
        self.backgroundColor = AppLightTheme.lightBackground
        self.setupUsernameLabel()
        self.setupAppHeader()
    }
}
