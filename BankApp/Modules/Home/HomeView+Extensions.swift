import UIKit

extension HomeView {
    func setupUsernameLabel() {
        self.addSubview(self.usernameLabel)
        
        NSLayoutConstraint.activate([
            self.usernameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            self.usernameLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 12),
            self.usernameLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
        ])
    }
    
    func setupAppHeader() {
        self.addSubview(self.AppHeader)
        NSLayoutConstraint.activate([
            self.AppHeader.topAnchor.constraint(equalTo: self.usernameLabel.bottomAnchor, constant: 20),
            self.AppHeader.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 12),
            self.AppHeader.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -12)
        ])
    }
}
