import UIKit

class HistoryView: UIView, AppViewProtocol {
    private lazy var screenTitleLabel = AppLabel(
        text: "Extrato e Transações",
        color: .darkGray,
        alignment: .center,
        font: .systemFont(ofSize: 28, weight: .medium))
    
    private lazy var transactionTable: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.separatorInset = .zero
        table.separatorStyle = .none
        table.backgroundColor = AppLightTheme.lightBackground
        table.register(TransactionTableViewCell.self, forCellReuseIdentifier: TransactionTableViewCell.identifier)
        return table
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.SetupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configTableViewDelegates(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.transactionTable.delegate = delegate
        self.transactionTable.dataSource = dataSource
    }
    
    func SetupUI() {
        self.backgroundColor = AppLightTheme.lightBackground
        self.setupScreenTitleLabel()
        self.setupTransactionTable()
    }
    
    private func setupScreenTitleLabel() {
        self.addSubview(self.screenTitleLabel)
        NSLayoutConstraint.activate([
            self.screenTitleLabel.topAnchor.constraint(
                equalTo: safeAreaLayoutGuide.topAnchor,
                constant: 20),
            self.screenTitleLabel.leadingAnchor.constraint(
                equalTo:safeAreaLayoutGuide.leadingAnchor,
                constant: 12),
            self.screenTitleLabel.trailingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.trailingAnchor,
                constant: -12)
        ])
    }
    
    private func setupTransactionTable() {
        self.addSubview(self.transactionTable)
        NSLayoutConstraint.activate([
            self.transactionTable.topAnchor.constraint(equalTo: self.screenTitleLabel.bottomAnchor, constant: 20),
            self.transactionTable.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            self.transactionTable.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            self.transactionTable.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
