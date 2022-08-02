import UIKit

class PaymentViewController: UIViewController {
    var screen: PaymentView?
    
    override func loadView() {
        self.screen = PaymentView()
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configDelegate(delegate: self)
    }
}

extension PaymentViewController: PaymentViewProtocol {
    func modalButtonAction() {
        present(PaymentModalController(), animated: true, completion: nil)
    }
}
