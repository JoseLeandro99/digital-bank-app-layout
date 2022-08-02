import UIKit

class TransactionTableViewCell: UITableViewCell {
    static let identifier: String = "TransactionTableViewCell"
    
    private lazy var cellContainer: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.borderRadious(8)
        view.border(0.3, color: .lightGray)
        return view
    }()
    
    private lazy var statusIndicator: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setWidth(4)
        return view
    }()
    
    private lazy var transactionName = AppLabel(
        text: "",
        color: .black,
        alignment: .left,
        font: .systemFont(ofSize: 16, weight: .regular))
    
    private lazy var transactionValue = AppLabel(
        text: "",
        color: .systemGreen,
        alignment: .left,
        font: .systemFont(ofSize: 18, weight: .regular))
    
    private lazy var transactionIcon = AppImage(
        name: "dollarsign.circle",
        color: .lightGray,
        mode: .scaleAspectFit)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = AppLightTheme.lightBackground
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCellData(transaction: TransactionHistory) {
        self.transactionName.text = transaction.operationName
        self.transactionValue.text = "R$ \(transaction.value)"
        
        if transaction.value > 0 {
            self.transactionValue.textColor = .systemGreen
            self.statusIndicator.backgroundColor = .systemGreen
        } else {
            self.transactionValue.textColor = .systemRed
            self.statusIndicator.backgroundColor = .systemRed
        }
    }
    
    private func setupUI() {
        self.cellContainer.addSubview(self.transactionIcon)
        self.cellContainer.addSubview(self.transactionName)
        self.cellContainer.addSubview(self.transactionValue)
        self.cellContainer.addSubview(self.statusIndicator)
        self.contentView.addSubview(self.cellContainer)
        
        self.transactionIcon.setWidth(25)
        self.transactionIcon.setHeight(25)
        
        NSLayoutConstraint.activate([
            self.transactionIcon.centerYAnchor.constraint(equalTo: self.cellContainer.centerYAnchor),
            self.transactionIcon.leadingAnchor.constraint(equalTo: self.cellContainer.leadingAnchor, constant: 15),
            
            self.cellContainer.topAnchor.constraint(equalTo: self.topAnchor, constant: 2.5),
            self.cellContainer.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            self.cellContainer.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            self.cellContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -2.5),
            
            self.transactionName.centerYAnchor.constraint(equalTo: self.cellContainer.centerYAnchor),
            self.transactionName.leadingAnchor.constraint(equalTo: self.transactionIcon.leadingAnchor, constant: 40),
            
            self.transactionValue.centerYAnchor.constraint(equalTo: self.cellContainer.centerYAnchor),
            self.transactionValue.trailingAnchor.constraint(equalTo: self.cellContainer.trailingAnchor, constant: -15),
            
            self.statusIndicator.topAnchor.constraint(equalTo: self.cellContainer.topAnchor),
            self.statusIndicator.leadingAnchor.constraint(equalTo: self.cellContainer.leadingAnchor),
            self.statusIndicator.bottomAnchor.constraint(equalTo: self.cellContainer.bottomAnchor),
        ])
    }
}
