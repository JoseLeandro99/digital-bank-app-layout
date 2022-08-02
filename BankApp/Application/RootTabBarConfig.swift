import UIKit

class RootTabBarConfig: UITabBarController {
    private typealias tabItemConfig = (title: String, icon: String, controller: UIViewController)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupTabBar()
        self.setupTabBarStyle()
        self.overrideTabBarDefaults()
    }
    
    private func setupTabBar() {
        let tabBarItems: [tabItemConfig] = [
            (title: "Inicio", icon: "house", controller: HomeViewController()),
            (title: "Pagamentos", icon: "qrcode", controller: PaymentViewController()),
            (title: "Credito", icon: "dollarsign.circle", controller: CreditViewController()),
            (title: "Extrato", icon: "list.dash", controller: HistoryViewController())
        ]
        
        var viewControllers: [UIViewController] = []
        tabBarItems.forEach { item in
            viewControllers.append(item.controller)
        }
        
        self.setViewControllers(viewControllers, animated: false)
        
        guard let items = self.tabBar.items else {return}
        for count in 0..<items.count {
            items[count].title = tabBarItems[count].title
            items[count].image = UIImage(systemName: tabBarItems[count].icon)
        }
    }
    
    private func setupTabBarStyle() {
        self.tabBar.backgroundColor = .white
        self.tabBar.tintColor = .systemTeal
        self.tabBar.unselectedItemTintColor = .lightGray
        self.tabBar.layer.borderWidth = 0.3
        self.tabBar.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    private func overrideTabBarDefaults() {
        UITabBar.appearance().backgroundImage = UIImage()
        
        let attributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12, weight: .regular)]
        UITabBarItem.appearance().setTitleTextAttributes(attributes, for: .normal)
    }
}
