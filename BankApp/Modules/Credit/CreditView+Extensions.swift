import UIKit

extension CreditView {
    func setupScreenImage() {
        self.addSubview(self.screenImage)
        self.screenImage.setWidth(200)
        self.screenImage.setHeight(200)
        NSLayoutConstraint.activate([
            self.screenImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            self.screenImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        ])
    }
    
    func setupScreenTitleLabel() {
        self.addSubview(self.screenTitleLabel)
        NSLayoutConstraint.activate([
            self.screenTitleLabel.topAnchor.constraint(equalTo: screenImage.bottomAnchor, constant: 10),
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
    
    func setupCreditLimeSlider() {
        self.addSubview(self.creditLimitSliderLabel)
        self.addSubview(self.creditLimitSlider)
        
        self.creditLimitSlider.addTarget(self, action: #selector(handleCreditSliderChange), for: .valueChanged)
        
        NSLayoutConstraint.activate([
            self.creditLimitSliderLabel.topAnchor.constraint(equalTo: self.screenDescriptionLabel.bottomAnchor, constant: 80),
            self.creditLimitSliderLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 40),
            self.creditLimitSliderLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -40),
            
            self.creditLimitSlider.topAnchor.constraint(equalTo: self.creditLimitSliderLabel.bottomAnchor, constant: 10),
            self.creditLimitSlider.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 50),
            self.creditLimitSlider.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -50)
        ])
    }
    
    func setupButtonSaveLimt() {
        self.addSubview(self.buttonSaveLimit)
        self.buttonSaveLimit.setHeight(50)
        self.buttonSaveLimit.border(0.3, color: .lightGray)
        self.buttonSaveLimit.borderRadious(20)
        self.buttonSaveLimit.setFont(.systemFont(ofSize: 22, weight: .medium))
        self.buttonSaveLimit.setTarget(
            target: self,
            selector: #selector(showAlertConfirmation),
            event: .touchUpInside)
        
        NSLayoutConstraint.activate([
            self.buttonSaveLimit.topAnchor.constraint(equalTo: self.creditLimitSlider.bottomAnchor, constant: 25),
            self.buttonSaveLimit.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 50),
            self.buttonSaveLimit.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -50)
        ])
    }
}
