import UIKit

extension PaymentView {
    func setupScreenImage() {
        self.addSubview(self.screenImage)
        self.screenImage.setWidth(200)
        self.screenImage.setHeight(200)
        NSLayoutConstraint.activate([
            self.screenImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 80),
            self.screenImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        ])
    }
    
    func setupScreenTitleLabel() {
        self.addSubview(self.screenTitleLabel)
        NSLayoutConstraint.activate([
            self.screenTitleLabel.topAnchor.constraint(equalTo: screenImage.bottomAnchor, constant: 20),
            self.screenTitleLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 12),
            self.screenTitleLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -12)
        ])
    }
    
    func setupScreenDescription() {
        self.addSubview(self.screenDescriptionLabel)
        self.screenDescriptionLabel.numberOfLines = 5
        NSLayoutConstraint.activate([
            self.screenDescriptionLabel.topAnchor.constraint(equalTo: self.screenTitleLabel.bottomAnchor, constant: 20),
            self.screenDescriptionLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 50),
            self.screenDescriptionLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -50),
        ])
    }
    
    func setupQrCodeButton() {
        self.qrCodeButtonContainerViewButton.setFont(.systemFont(ofSize: 20, weight: .medium))
        self.qrCodeButtonContainerViewButton.setTarget(
            target: self,
            selector: #selector(handleButtonClick),
            event: .touchUpInside)
        
        self.qrCodeButtonContainerView.addSubview(self.qrCodeButtonContainerViewButton)
        self.qrCodeButtonContainerView.addSubview(self.qrCodeButtonContainerViewIcon)
        self.addSubview(self.qrCodeButtonContainerView)
        
        self.qrCodeButtonContainerView.setHeight(70)
        self.qrCodeButtonContainerViewIcon.setWidth(40)
        self.qrCodeButtonContainerViewIcon.setHeight(40)
        
        NSLayoutConstraint.activate([
            self.qrCodeButtonContainerView.topAnchor.constraint(equalTo: self.screenDescriptionLabel.bottomAnchor, constant: 70),
            self.qrCodeButtonContainerView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.qrCodeButtonContainerView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 40),
            self.qrCodeButtonContainerView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -40),
            
            self.qrCodeButtonContainerViewButton.centerXAnchor.constraint(equalTo: self.qrCodeButtonContainerView.centerXAnchor, constant: -25),
            self.qrCodeButtonContainerViewButton.centerYAnchor.constraint(equalTo: self.qrCodeButtonContainerView.centerYAnchor),
            
            self.qrCodeButtonContainerViewIcon.trailingAnchor.constraint(equalTo: self.qrCodeButtonContainerView.trailingAnchor, constant: -20),
            self.qrCodeButtonContainerViewIcon.centerYAnchor.constraint(equalTo: self.qrCodeButtonContainerView.centerYAnchor)
        ])
    }
    
    func setupBarCodeButton() {
        self.barCodeButtonContainerViewButton.setFont(.systemFont(ofSize: 20, weight: .medium))
        self.barCodeButtonContainerViewButton.setTarget(
            target: self,
            selector: #selector(handleButtonClick),
            event: .touchUpInside)
        
        self.barCodeButtonContainerView.addSubview(self.barCodeButtonContainerViewButton)
        self.barCodeButtonContainerView.addSubview(self.barCodeButtonContainerViewIcon)
        self.addSubview(self.barCodeButtonContainerView)
        
        self.barCodeButtonContainerView.setHeight(70)
        self.barCodeButtonContainerViewIcon.setWidth(40)
        self.barCodeButtonContainerViewIcon.setHeight(40)
        
        NSLayoutConstraint.activate([
            self.barCodeButtonContainerView.topAnchor.constraint(equalTo: self.qrCodeButtonContainerView.bottomAnchor, constant: 20),
            self.barCodeButtonContainerView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.barCodeButtonContainerView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 40),
            self.barCodeButtonContainerView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -40),
            
            self.barCodeButtonContainerViewButton.centerXAnchor.constraint(equalTo: self.barCodeButtonContainerView.centerXAnchor, constant: -25),
            self.barCodeButtonContainerViewButton.centerYAnchor.constraint(equalTo: self.barCodeButtonContainerView.centerYAnchor),
            
            self.barCodeButtonContainerViewIcon.trailingAnchor.constraint(equalTo: self.barCodeButtonContainerView.trailingAnchor, constant: -20),
            self.barCodeButtonContainerViewIcon.centerYAnchor.constraint(equalTo: self.barCodeButtonContainerView.centerYAnchor)
        ])
    }
}
