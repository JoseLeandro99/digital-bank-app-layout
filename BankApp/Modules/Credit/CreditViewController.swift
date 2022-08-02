import UIKit

class CreditViewController: UIViewController {
    var screen: CreditView?
    
    override func loadView() {
        self.screen = CreditView()
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.screen?.configDelegate(delegate: self)
    }
}

extension CreditViewController: CreditViewProtocol {
    func confirmAlert() {
        let alert = UIAlertHelper.alert(title: "Sucesso", message: "Limite redefinido com sucesso")
        present(alert, animated: true, completion: nil)
    }
}
