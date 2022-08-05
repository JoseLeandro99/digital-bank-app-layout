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
    
    func setupCollectionAction() {
        self.addSubview(self.collectionActions)
        NSLayoutConstraint.activate([
            self.collectionActions.topAnchor.constraint(equalTo: self.AppHeader.bottomAnchor, constant: 20),
            self.collectionActions.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            self.collectionActions.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
            self.collectionActions.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 10)
        ])
    }
}
