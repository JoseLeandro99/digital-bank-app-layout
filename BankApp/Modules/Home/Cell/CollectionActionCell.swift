import UIKit

class CollectionActionCell: UICollectionViewCell {
    static let identifier: String = "CollectionActionCell"
    
    lazy var actionButton = AppButton(
        title: "",
        color: .systemTeal,
        background: .white,
        state: .normal)
    
    lazy var cellLabel = AppLabel(
        text: "Cell",
        color: .systemTeal,
        alignment: .center,
        font: .systemFont(ofSize: 14))
    
    lazy var cellImage = AppImage(
        name: "dollarsign.circle",
        color: .systemTeal,
        mode: .scaleAspectFit)
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCellData(action: HomeAction) {
        self.cellImage.image = UIImage(systemName: action.icon)
        self.cellLabel.text = action.title
    }
    
    private func setupUI() {
        self.backgroundColor = .white
        self.borderRadious(10)
        self.border(0.4, color: .lightGray)
        
        self.cellImage.setWidth(50)
        self.cellImage.setHeight(50)
        
        self.actionButton.addSubview(self.cellLabel)
        self.actionButton.addSubview(self.cellImage)
        self.contentView.addSubview(self.actionButton)
        
        NSLayoutConstraint.activate([
            self.cellImage.centerYAnchor.constraint(equalTo: self.actionButton.centerYAnchor, constant: -12),
            self.cellImage.centerXAnchor.constraint(equalTo: self.actionButton.centerXAnchor),
            
            self.cellLabel.centerYAnchor.constraint(equalTo: self.cellImage.bottomAnchor, constant: 20),
            self.cellLabel.centerXAnchor.constraint(equalTo: self.actionButton.centerXAnchor),
            
            self.actionButton.topAnchor.constraint(equalTo: self.topAnchor),
            self.actionButton.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.actionButton.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.actionButton.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
