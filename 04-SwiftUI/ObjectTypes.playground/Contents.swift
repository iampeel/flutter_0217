
class BankAccount {
    var accountBalance: Float
    var accountNumber: Int
    
    init(number: Int, balance: Float) {
        self.accountNumber = number
        self.accountBalance = balance
    }
    
    func displayBalance() {
        print("Account number is \(accountNumber)")
        print("Your balance is \(accountBalance)")
    }
    
    class func getMaxBalance() -> Float {
        return 100000.00
    }
}

var account1 = BankAccount(number: 12312312, balance: 400.54)

account1.displayBalance()

