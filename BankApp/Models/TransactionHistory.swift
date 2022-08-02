public struct TransactionHistory {
    var operationName: String
    var value: Float
}

public let transactionOperations: [TransactionHistory] = [
    TransactionHistory(operationName: "Fatura Cartão", value: 35.90),
    TransactionHistory(operationName: "Fatura Internet", value: 149.99),
    TransactionHistory(operationName: "Super Mercado", value: 474.43),
    TransactionHistory(operationName: "Compras", value: -250.00),
    TransactionHistory(operationName: "Seguro", value: 760.35),
    TransactionHistory(operationName: "Mensalidade", value: -350.00),
    TransactionHistory(operationName: "Cursos Online", value: -90.00),
    TransactionHistory(operationName: "Assinaturas", value: -117.00),
    TransactionHistory(operationName: "Mensalidade", value: 474.43),
    TransactionHistory(operationName: "Delivery", value: 474.43),
]
