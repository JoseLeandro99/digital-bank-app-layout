import UIKit

class HomeViewController: UIViewController {
    var screen: HomeView?
    
    override func loadView() {
        self.screen = HomeView()
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}
